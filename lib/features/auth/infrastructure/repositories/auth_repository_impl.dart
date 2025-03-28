import 'package:seriesradar_app/features/auth/domain/datasources/local_auth_datasource.dart';
import 'package:seriesradar_app/features/auth/domain/entities/user.dart';
import 'package:seriesradar_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:seriesradar_app/features/auth/infrastructure/datasources/isar_auth_datasource_impl.dart';

class AuthRepositoryImpl extends AuthRepository {
  final LocalAuthDatasource datasource;

  AuthRepositoryImpl({LocalAuthDatasource? datasource})
      : datasource = datasource ?? IsarAuthDatasourceImpl();

  @override
  Future<User> checkAuthStatus(String token) async {
    return await datasource.checkAuthStatus(token);
  }

  @override
  Future<User> login(String email, String password) async {
    return await datasource.login(email, password);
  }

  @override
  Future<User?> register(String email, String password, String fullName) async {
    return await datasource.register(email, password, fullName);
  }

  @override
  Future<User?> removeTokenFromDatabase(String token) async {
    return await datasource.removeTokenFromDatabase(token);
  }
}
