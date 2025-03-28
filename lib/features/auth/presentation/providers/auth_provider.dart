import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seriesradar_app/features/auth/domain/entities/user.dart';
import 'package:seriesradar_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:seriesradar_app/features/auth/infrastructure/errors/aurh_errors.dart';
import 'package:seriesradar_app/features/auth/infrastructure/repositories/auth_repository_impl.dart';
import 'package:seriesradar_app/features/auth/shared/services/key_value_service_impl.dart';
import 'package:seriesradar_app/features/auth/shared/services/key_value_storage.dart';

final authProvider = StateNotifierProvider<AuthNotifier, AuthProvider>((ref) {
  final keyValueService =
      KeyValueServiceImpl(); // Crear la instancia del almacenamiento
  final authRepository = AuthRepositoryImpl();

  return AuthNotifier(
      authRepository: authRepository, keyValueStorage: keyValueService);
});

class AuthNotifier extends StateNotifier<AuthProvider> {
  final AuthRepository authRepository;
  final KeyValueStorage keyValueStorage;

  AuthNotifier({
    required this.authRepository,
    required this.keyValueStorage,
  }) : super(AuthProvider()) {
    checkAuthStatus();
  }

  Future<void> loginUser(String email, String password) async {
    try {
      final user = await authRepository.login(email, password);
      _setLoggedUser(user);
      await keyValueStorage.setKeyValue(
          'auth_token', user.token!); // Guardar token
    } on WrongCredentials {
      logout('Credenciales no son correctas');
    } catch (e) {
      logout('Error no contorlado');
    }
  }

  Future<void> registerUser(String email, String password, String fullName,
      String confirmPassword) async {
    try {
      if (password != confirmPassword) {
        throw WrongCredentials(); // Lanzar excepción si las contraseñas no coinciden
      }

      final user = await authRepository.register(email, password, fullName);

      if (user == null) {
        logout('El correo ya está registrado');
        return;
      }
      _setLoggedUser(user);
      await keyValueStorage.setKeyValue(
          'auth_token', user.token!); // Guardar token
    } on WrongCredentials {
      logout('las contraseñas no coinciden');
    } catch (e) {
      logout('Error no contorlado');
    }
  }

  void checkAuthStatus() async {
    try {
      final token = await keyValueStorage.getValue<String>('auth_token');
      if (token == null) throw Exception('No autenticado');
      final user = await authRepository.checkAuthStatus(token);
      _setLoggedUser(user);
    } catch (_) {
      logout();
    }
  }

  void _setLoggedUser(User user) {
    state = state.copyWith(
      user: user,
      authStatus: AuthStatus.authenticated,
      errorMessage: '',
    );
  }

  Future<void> logout([String? errorMessage]) async {
    await keyValueStorage
        .removeKey('token'); // Eliminar token del almacenamiento local
    // También eliminar el token de la base de datos (Isar)
    final token = await keyValueStorage.getValue<String>('auth_token');
    if (token != null) {
      await authRepository
          .removeTokenFromDatabase(token); // Eliminar token de la base de datos
    }
    state = state.copyWith(
      authStatus: AuthStatus.notAuthenticated,
      user: null,
      errorMessage: errorMessage,
    );
  }
}

enum AuthStatus { checking, authenticated, notAuthenticated }

class AuthProvider {
  final AuthStatus authStatus;
  final User? user;
  final String errorMessage;

  AuthProvider(
      {this.errorMessage = '',
      this.authStatus = AuthStatus.checking,
      this.user});

  AuthProvider copyWith(
      {AuthStatus? authStatus, User? user, String? errorMessage}) {
    return AuthProvider(
        authStatus: authStatus ?? this.authStatus,
        user: user ?? this.user,
        errorMessage: errorMessage ?? this.errorMessage);
  }
}
