import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seriesradar_app/domain/entities/serie_details.dart';
import 'package:seriesradar_app/domain/repositories/local_storage_repository.dart';
import 'package:seriesradar_app/presentation/providers/storage/local_storage_provider.dart';

final favoritesSeriesProvider =
    StateNotifierProvider<StorageSeriesNotifier, Map<int, SerieDetails>>((ref) {
  final localStorageRepository = ref.watch(localStorageRepositoryProvider);
  return StorageSeriesNotifier(localStorageRepository: localStorageRepository);
});

class StorageSeriesNotifier extends StateNotifier<Map<int, SerieDetails>> {
  int page = 0;

  final LocalStorageRepository localStorageRepository;

  StorageSeriesNotifier({required this.localStorageRepository}) : super({});

  Future<List<SerieDetails>> loadNextPage() async {
    final series = await localStorageRepository.loadSeries(offset: page * 10);
    page++;

    final tempSeriesMap = <int, SerieDetails>{};
    for (final serie in series) {
      tempSeriesMap[serie.id] = serie;
    }

    state = {...state, ...tempSeriesMap};

    return series;
  }

  Future<void> toggleFavorite(SerieDetails serie) async {
    await localStorageRepository.toggleFavorite(serie);
    final bool isSerieInFavorite = state[serie.id] != null;

    if (isSerieInFavorite) {
      state.remove(serie.id);
      state = {...state};
    } else {
      state = {...state, serie.id: serie};
    }
  }
}
