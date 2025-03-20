// Repositorio
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seriesradar_app/infrastructure/datasources/providers_datasources_impl.dart';
import 'package:seriesradar_app/infrastructure/repositories/providers_repository_impl.dart';
import 'package:seriesradar_app/domain/entities/watch_provider.dart';

final watchProvider = StateNotifierProvider<WatchProviderNotifier,
    AsyncValue<List<WatchProvider>>>((ref) {
  return WatchProviderNotifier(
      ProvidersRepositoryImpl(ProvidersDatasourcesImpl()));
});

class WatchProviderNotifier
    extends StateNotifier<AsyncValue<List<WatchProvider>>> {
  final ProvidersRepositoryImpl _repository;

  WatchProviderNotifier(this._repository) : super(const AsyncLoading());

  Future<void> getWatchProviders() async {
    try {
      final providers = await _repository.getTvWatchProvider();
      state = AsyncData(providers);
    } catch (e) {
      state = AsyncError(e, StackTrace.current);
    }
  }
}
