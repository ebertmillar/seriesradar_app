import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seriesradar_app/domain/entities/season_details.dart';
import 'package:seriesradar_app/presentation/providers/season/season_repository_provider.dart';

final seasonInfoProvider = StateNotifierProvider<SeasonMapNotifier, Map<String, SeasonDetails>>((ref) {
  final seasonRepository = ref.watch(seasonRepositoryProvider);
  return SeasonMapNotifier(getSeason: seasonRepository.getSeasonDetails);
});

typedef GetSeasonCallback = Future<SeasonDetails> Function(int serieId, int seasonNumber);

class SeasonMapNotifier extends StateNotifier<Map<String, SeasonDetails>> {
  final GetSeasonCallback getSeason;

  SeasonMapNotifier({required this.getSeason}) : super({});

  Future<void> loadSeason(int serieId, int seasonNumber) async {
    final key = "$serieId-$seasonNumber";  // Usamos un identificador único para cada temporada.

    if (state[key] != null) return;

    final season = await getSeason(serieId, seasonNumber);

    state = {...state, key: season};
  }
}