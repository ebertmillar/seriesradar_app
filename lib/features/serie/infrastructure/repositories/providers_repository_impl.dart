import 'package:seriesradar_app/features/serie/domain/datasources/providers_datasources.dart';
import 'package:seriesradar_app/features/serie/domain/entities/watch_provider.dart';
import 'package:seriesradar_app/features/serie/domain/repositories/providers_repository.dart';

class ProvidersRepositoryImpl extends ProvidersRepository {
  final ProvidersDatasources datasources;

  ProvidersRepositoryImpl(this.datasources);

  @override
  Future<List<WatchProvider>> getTvWatchProvider() async {
    return await datasources.getTvWatchProvider();
  }
}
