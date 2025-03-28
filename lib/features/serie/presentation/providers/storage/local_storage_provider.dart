import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seriesradar_app/features/serie/infrastructure/datasources/isar_local_storage_datasource_impl.dart';
import 'package:seriesradar_app/features/serie/infrastructure/repositories/local_storage_repository_impl.dart';

final localStorageRepositoryProvider = Provider((ref) {
  return LocalStorageRepositoryImpl(IsarLocalStorageDatasourceImpl());
});
