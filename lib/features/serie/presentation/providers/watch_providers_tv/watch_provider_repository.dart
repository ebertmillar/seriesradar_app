import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seriesradar_app/features/serie/domain/entities/watch_provider.dart';
import 'package:seriesradar_app/features/serie/domain/datasources/providers_datasources.dart';
import 'package:seriesradar_app/features/serie/infrastructure/datasources/providers_datasources_impl.dart';

final providersDatasourceProvider = Provider<ProvidersDatasources>((ref) {
  return ProvidersDatasourcesImpl();
});

final tvWatchProvidersRepostory =
    FutureProvider<List<WatchProvider>>((ref) async {
  final providersDatasource = ref.watch(providersDatasourceProvider);
  return await providersDatasource.getTvWatchProvider();
});
