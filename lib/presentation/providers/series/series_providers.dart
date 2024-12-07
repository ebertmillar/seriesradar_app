
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seriesradar_app/domain/entities/serie.dart';
import 'package:seriesradar_app/presentation/providers/series/series_repository_provider.dart';

final popularSeriesProvider = StateNotifierProvider<SeriesNotifier, List<Serie>>((ref){

  final fetchMoreSeries = ref.watch(serieRepositoryProvider).getPopularSeries;
  return SeriesNotifier(fetchMoreSeries: fetchMoreSeries);
});

typedef SerieCallback = Future<List<Serie>> Function({ int page });

class SeriesNotifier extends StateNotifier<List<Serie>> {
  
  int currentPage = 0;
  SerieCallback fetchMoreSeries;
  
  SeriesNotifier({
    required this.fetchMoreSeries,
  }) : super([]);

  Future<void> loadNextPage() async {
    currentPage++;
    final List<Serie> series = await fetchMoreSeries(page: currentPage);
    state = [...state, ...series ];
  }

  
}