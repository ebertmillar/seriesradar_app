
import 'package:seriesradar_app/domain/entities/season_details.dart';

abstract class SeasonRepository {

  Future<SeasonDetails> getSeasonDetails(int serieId, int seasonNumber);
  
}