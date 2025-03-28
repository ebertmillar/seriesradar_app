import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seriesradar_app/features/serie/domain/entities/serie.dart';
import 'package:seriesradar_app/features/serie/presentation/providers/series/series_repository_provider.dart';

final searchQueryProvider = StateProvider<String>((ref) => '');

//series previamente buscadas
final searchedSeriesProvider =
    StateNotifierProvider<SearchSeriesNotifier, List<Serie>>((ref) {
  final serieRepository = ref.read(serieRepositoryProvider);

  return SearchSeriesNotifier(
    searchSeries: serieRepository.searchSeries,
    ref: ref,
  );
});

typedef SearchSeriesCallback = Future<List<Serie>> Function(String query);

class SearchSeriesNotifier extends StateNotifier<List<Serie>> {
  final SearchSeriesCallback searchSeries;
  final Ref ref;

  SearchSeriesNotifier({
    required this.searchSeries,
    required this.ref,
  }) : super([]);

  Future<List<Serie>> searchSeriesByQuery(String query) async {
    final List<Serie> series = await searchSeries(query);
    ref.read(searchQueryProvider.notifier).update((state) => query);

    state = series;
    return series;
  }
}
