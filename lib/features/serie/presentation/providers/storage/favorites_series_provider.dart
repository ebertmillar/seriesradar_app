import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seriesradar_app/features/auth/domain/entities/user.dart';
import 'package:seriesradar_app/features/auth/presentation/providers/auth_provider.dart';
import 'package:seriesradar_app/features/serie/domain/entities/serie_details.dart';
import 'package:seriesradar_app/features/serie/domain/repositories/local_storage_repository.dart';
import 'package:seriesradar_app/features/serie/presentation/providers/storage/local_storage_provider.dart';

final favoritesSeriesProvider =
    StateNotifierProvider<StorageSeriesNotifier, Map<int, SerieDetails>>((ref) {
  final localStorageRepository = ref.watch(localStorageRepositoryProvider);
  final user = ref.watch(authProvider).user;
  return StorageSeriesNotifier(
      localStorageRepository: localStorageRepository, user: user!);
});

class StorageSeriesNotifier extends StateNotifier<Map<int, SerieDetails>> {
  int page = 0;
  bool isLastPage = false; // Indicador de última página

  final LocalStorageRepository localStorageRepository;
  final User user;

  StorageSeriesNotifier(
      {required this.localStorageRepository, required this.user})
      : super({});

// Cargar la siguiente página de series
  Future<List<SerieDetails>> loadNextPage() async {
    if (isLastPage) return []; // Si ya llegamos al final, no hacer nada

    final series = await localStorageRepository.loadFavoriteSeries(
      user,
      offset: page * 10,
    );
    page++;

    final tempSeriesMap = <int, SerieDetails>{};
    for (final serie in series) {
      tempSeriesMap[serie.id] = serie;
    }

    state = {...state, ...tempSeriesMap};

    if (series.isEmpty) {
      isLastPage = true; // Marcar como última página si no se devuelven series
    }

    return series;
  }

  // Future<List<SerieDetails>> loadNextPage() async {
  //   final series = await localStorageRepository.loadSeries(offset: page * 10);
  //   page++;

  //   final tempSeriesMap = <int, SerieDetails>{};
  //   for (final serie in series) {
  //     tempSeriesMap[serie.id] = serie;
  //   }

  //   state = {...state, ...tempSeriesMap};

  //   return series;
  // }

  Future<void> toggleFavorite(SerieDetails serie) async {
    await localStorageRepository.toggleFavorite(serie, user);
    final bool isSerieInFavorite = state[serie.id] != null;

    if (isSerieInFavorite) {
      state.remove(serie.id);
      state = {...state};
    } else {
      state = {...state, serie.id: serie};
    }
  }

  Future<void> loadFavoriteSeries() async {
    final series = await localStorageRepository.loadFavoriteSeries(user);
    final tempSeriesMap = <int, SerieDetails>{};
    for (final serie in series) {
      tempSeriesMap[serie.id] = serie;
    }
    state = tempSeriesMap;
  }
}
