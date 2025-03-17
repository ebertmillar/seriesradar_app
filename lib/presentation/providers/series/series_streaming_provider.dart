import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seriesradar_app/domain/entities/serie.dart';
import 'package:seriesradar_app/presentation/providers/series/series_repository_provider.dart';

final seriesByProvider =
    StateNotifierProvider.family<SeriesStreamingProvider, List<Serie>, String>(
        (ref, providerName) {
  final fetchMoreSeries =
      ref.watch(serieRepositoryProvider).getSeriesByProvider;
  return SeriesStreamingProvider(
      fetchMoreSeries: fetchMoreSeries, providerName: providerName);
});

typedef SerieCallback = Future<List<Serie>> Function(String providerName,
    {int page});

class SeriesStreamingProvider extends StateNotifier<List<Serie>> {
  int currentPage = 1;
  bool isloading = false;
  final SerieCallback fetchMoreSeries;
  final String providerName;

  SeriesStreamingProvider({
    required this.providerName,
    required this.fetchMoreSeries,
  }) : super([]);

  Future<void> loadNextPage() async {
    if (isloading) return;
    isloading = true;
    currentPage++;
    final List<Serie> series =
        await fetchMoreSeries(providerName, page: currentPage);
    state = [...state, ...series];
    await Future.delayed(const Duration(milliseconds: 300));
    isloading = false;
  }
}
