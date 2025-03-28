import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:seriesradar_app/features/auth/domain/datasources/local_auth_datasource.dart';
import 'package:seriesradar_app/features/auth/domain/entities/user.dart';
import 'package:seriesradar_app/features/auth/infrastructure/errors/aurh_errors.dart';
import 'package:seriesradar_app/features/serie/domain/entities/serie_details.dart';
import 'package:uuid/uuid.dart';

class IsarAuthDatasourceImpl extends LocalAuthDatasource {
  late Future<Isar> db;

  IsarAuthDatasourceImpl() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    final dir = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open([UserSchema, SerieDetailsSchema],
          directory: dir.path);
    }
    return Future.value(Isar.getInstance());
  }

  String _hashPassword(String password) {
    return sha256.convert(utf8.encode(password)).toString();
  }

  String _generateToken() {
    return const Uuid().v4();
  }

  @override
  Future<User> checkAuthStatus(String token) async {
    final isar = await db;
    final user = await isar.users.filter().tokenEqualTo(token).findFirst();
    if (user == null) throw Exception('Token inválido');

    return user;
  }

  @override
  Future<User> login(String email, String password) async {
    try {
      final isar = await db;
      final user = await isar.users.filter().emailEqualTo(email).findFirst();
      if (user == null || user.passwordHash != _hashPassword(password)) {
        throw Exception('Credenciales incorrectas');
      }

      user.token = _generateToken();
      await isar.writeTxn(() async => await isar.users.put(user));

      return user;
    } catch (e) {
      throw WrongCredentials();
    }
  }

  @override
  Future<User?> register(String email, String password, String fullName) async {
    try {
      final isar = await db;

      // Verificar si el usuario ya existe
      final existingUser =
          await isar.users.filter().emailEqualTo(email).findFirst();
      if (existingUser != null) {
        return null; // Retornar null si el email ya está registrado
      }

      final hashedPassword = _hashPassword(password);
      final token = _generateToken(); // Generar token automáticamente

      final user = User(
        email: email,
        fullName: fullName,
        passwordHash: hashedPassword,
        token: token, // Asignar token al usuario
      );

      await isar.writeTxn(() async => await isar.users.put(user));

      return user; // Retornar el usuario registrado
    } catch (e) {
      throw WrongCredentials();
    }
  }

  @override
  Future<User?> removeTokenFromDatabase(String token) async {
    try {
      final isar = await db;
      final user = await isar.users.filter().tokenEqualTo(token).findFirst();
      if (user != null) {
        user.token = null; // Eliminar el token
        await isar.writeTxn(() async {
          await isar.users.put(user); // Actualizar el usuario sin token
        });
        return user; // Retornar el usuario actualizado
      } else {
        print('Usuario no encontrado');
        return null; // Retornar null si el usuario no se encuentra
      }
    } catch (e) {
      print('Error: $e');
      rethrow; // Vuelve a lanzar la excepción para que pueda ser manejada externamente si es necesario
    }
  }

  // Future<void> removeTokenFromDatabase() async {
  // final isar = await db;
  // final user = await isar.users.filter().tokenEqualTo(user.token).findFirst();
  // if (user != null) {
  //   user.token = null; // Eliminar el token
  //   await isar.writeTxn(() async {
  //     await isar.users.put(user); // Actualizar el usuario sin token
  //   });
  // }
  // }
}
