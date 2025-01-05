import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seriesradar_app/domain/entities/serie_details.dart';
import 'package:seriesradar_app/presentation/providers/series/series_repository_provider.dart';

final serieInfoProvider = StateNotifierProvider<SerieMapNotifier, Map< String, SerieDetails>>((ref) {
  final serieRepository = ref.watch(serieRepositoryProvider);
  return SerieMapNotifier(getSerie: serieRepository.getSerieDetails);
});

typedef GetSerieCallback = Future<SerieDetails> Function(String serieId);

class SerieMapNotifier extends StateNotifier<Map<String, SerieDetails>> {
  final GetSerieCallback getSerie;

  SerieMapNotifier({required this.getSerie}) : super({});

  Future<void> loadSerie(String serieId) async {
    if (state[serieId] != null) return;

    final serie = await getSerie(serieId);

    state = {...state, serieId: serie};
  }
}
