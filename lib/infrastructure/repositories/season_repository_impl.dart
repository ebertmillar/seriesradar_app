import 'package:seriesradar_app/domain/datasources/season_datasources.dart';
import 'package:seriesradar_app/domain/entities/season_details.dart';
import 'package:seriesradar_app/domain/repositories/season_repository.dart';

class SeasonRepositoryImpl extends SeasonRepository{
  final SeasonDatasources datasources;

  SeasonRepositoryImpl(this.datasources);

  @override
  Future<SeasonDetails> getSeasonDetails(int serieId, int seasonNumber) async {
    return await datasources.getSeasonDetails(serieId, seasonNumber);
  }
}