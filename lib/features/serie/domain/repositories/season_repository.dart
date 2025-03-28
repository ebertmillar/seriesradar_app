import 'package:seriesradar_app/features/serie/domain/entities/season_details.dart';

abstract class SeasonRepository {
  Future<SeasonDetails> getSeasonDetails(int serieId, int seasonNumber);
}
