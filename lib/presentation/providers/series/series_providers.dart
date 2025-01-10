
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seriesradar_app/domain/entities/serie.dart';
import 'package:seriesradar_app/presentation/providers/series/series_repository_provider.dart';

final popularSeriesProvider = StateNotifierProvider<SeriesNotifier, List<Serie>>((ref){
  final fetchMoreSeries = ref.watch(serieRepositoryProvider).getPopularSeries;
  return SeriesNotifier(fetchMoreSeries: fetchMoreSeries);
});

final airingTodayProvider = StateNotifierProvider<SeriesNotifier, List<Serie>>((ref){
  final fetchMoreSeries = ref.watch(serieRepositoryProvider).getPopularSeries;
  return SeriesNotifier(fetchMoreSeries: fetchMoreSeries);
});

final onTheAirProvider = StateNotifierProvider<SeriesNotifier, List<Serie>>((ref){
  final fetchMoreSeries = ref.watch(serieRepositoryProvider).getOnTheAir;
  return SeriesNotifier(fetchMoreSeries: fetchMoreSeries);
});

final topRatedProvider = StateNotifierProvider<SeriesNotifier, List<Serie>>((ref){
  final fetchMoreSeries = ref.watch(serieRepositoryProvider).getTopRated;
  return SeriesNotifier(fetchMoreSeries: fetchMoreSeries);
});

typedef SerieCallback = Future<List<Serie>> Function({ int page });

class SeriesNotifier extends StateNotifier<List<Serie>> {
  
  int currentPage = 0;
  bool isloading = false;
  SerieCallback fetchMoreSeries;
  
  SeriesNotifier({
    required this.fetchMoreSeries,
  }) : super([]);

  Future<void> loadNextPage() async {
    if(isloading) return;
    isloading = true;
    currentPage++;
    final List<Serie> series = await fetchMoreSeries(page: currentPage);
    state = [...state, ...series ];
    await Future.delayed(const Duration(milliseconds: 300));
    isloading = false;
  }

  
}


