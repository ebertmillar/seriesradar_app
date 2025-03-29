import 'package:seriesradar_app/features/serie/domain/datasources/series_datasources.dart';
import 'package:seriesradar_app/features/serie/domain/entities/content_rating.dart';
import 'package:seriesradar_app/features/serie/domain/entities/serie.dart';
import 'package:seriesradar_app/features/serie/domain/entities/serie_details.dart';
import 'package:seriesradar_app/features/serie/domain/entities/video.dart';
import 'package:seriesradar_app/features/serie/domain/repositories/series_repository.dart';

class SeriesRepositoryImpl extends SeriesRepository {
  final SeriesDatasources datasources;

  SeriesRepositoryImpl(this.datasources);

  @override
  Future<List<Serie>> getPopularSeries({int page = 1}) async {
    return await datasources.getPopularSeries(page: page);
  }

  @override
  Future<SerieDetails> getSerieDetails(String id) async {
    return await datasources.getSerieDetails(id);
  }

  @override
  Future<List<Serie>> getAiringToday({int page = 1}) async {
    return await datasources.getAiringToday(page: page);
  }

  @override
  Future<List<Serie>> getOnTheAir({int page = 1}) async {
    return await datasources.getOnTheAir(page: page);
  }

  @override
  Future<List<Serie>> getTopRated({int page = 1}) async {
    return await datasources.getTopRated(page: page);
  }

  @override
  Future<List<Serie>> getSimilarSeries(int serieId) async {
    return await datasources.getSimilarSeries(serieId);
  }

  @override
  Future<List<Serie>> searchSeries(String query) async {
    return await datasources.searchSeries(query);
  }

  @override
  Future<List<Serie>> getSeriesByProvider(String providerName,
      {int page = 1}) async {
    return await datasources.getSeriesByProvider(providerName, page: page);
  }

  @override
  Future<List<Serie>> getRecommendationsSeries(int serieId) async {
    return await datasources.getRecommendationsSeries(serieId);
  }

  @override
  Future<List<Video>> getYoutubeVideosById(int serieId) async {
    return await datasources.getYoutubeVideosById(serieId);
  }

  @override
  Future<List<ContentRating>> getContentRatingById(int serieId) async {
    return await datasources.getContentRatingById(serieId);
  }
}
