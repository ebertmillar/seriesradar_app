import 'package:dio/dio.dart';
import 'package:seriesradar_app/config/constans/environment.dart';
import 'package:seriesradar_app/features/serie/domain/datasources/series_datasources.dart';
import 'package:seriesradar_app/features/serie/domain/entities/content_rating.dart';
import 'package:seriesradar_app/features/serie/domain/entities/serie.dart';
import 'package:seriesradar_app/features/serie/domain/entities/serie_details.dart';
import 'package:seriesradar_app/features/serie/domain/entities/video.dart';
import 'package:seriesradar_app/features/serie/infrastructure/mappers/serie_content_rating_mapper.dart';
import 'package:seriesradar_app/features/serie/infrastructure/mappers/serie_details_mapper.dart';
import 'package:seriesradar_app/features/serie/infrastructure/mappers/serie_mapper.dart';
import 'package:seriesradar_app/features/serie/infrastructure/mappers/video_mapper.dart';
import 'package:seriesradar_app/features/serie/infrastructure/models/movie_db/movie_db_response.dart';
import 'package:seriesradar_app/features/serie/infrastructure/models/movie_db/serie_content_rating_movie_db.dart';
import 'package:seriesradar_app/features/serie/infrastructure/models/movie_db/serie_details_movie_db.dart';
import 'package:seriesradar_app/features/serie/infrastructure/models/movie_db/serie_videos_movie_db.dart';

class SeriesDatasourcesImpl extends SeriesDatasources {
  final dio = Dio(
      BaseOptions(baseUrl: 'https://api.themoviedb.org/3', queryParameters: {
    'api_key': Environment.theMovieDBKey,
    'language': 'es-ES' // Configuración del idioma
  }));

  List<Serie> _jsonToSeries(Map<String, dynamic> json) {
    final serieDBResponse = MovieDbResponse.fromJson(json);

    // Convertir los resultados en entidades Serie
    final List<Serie> series = serieDBResponse.results
        .map((seriedb) => SerieMapper.serieDBtoEntity(seriedb))
        .toList();

    return series;
  }

  @override
  Future<List<Serie>> getPopularSeries({int page = 1}) async {
    final response = await dio.get('/tv/popular', queryParameters: {
      'page': page,
    });

    return _jsonToSeries(response.data);
  }

  @override
  Future<SerieDetails> getSerieDetails(String id) async {
    final response = await dio.get('/tv/$id');

    if (response.statusCode != 200)
      return throw Exception('Serie con id : $id no encontrado');

    final serieDetails = SerieDetailsMovieDB.fromJson(response.data);
    final SerieDetails serie =
        SerieDetailsMapper.serieDetailstoEntity(serieDetails);

    return serie;
  }

  @override
  Future<List<Serie>> getAiringToday({int page = 1}) async {
    final response = await dio.get('/tv/airing_today', queryParameters: {
      'page': page,
    });

    return _jsonToSeries(response.data);
  }

  @override
  Future<List<Serie>> getOnTheAir({int page = 1}) async {
    final response = await dio.get('/tv/on_the_air', queryParameters: {
      'page': page,
    });

    return _jsonToSeries(response.data);
  }

  @override
  Future<List<Serie>> getTopRated({int page = 1}) async {
    final response = await dio.get('/tv/top_rated', queryParameters: {
      'page': page,
    });

    return _jsonToSeries(response.data);
  }

  @override
  Future<List<Serie>> getSimilarSeries(int serieId) async {
    final response = await dio.get('/tv/$serieId/similar');
    return _jsonToSeries(response.data);
  }

  @override
  Future<List<Serie>> searchSeries(String query) async {
    if (query.isEmpty) return [];

    final response = await dio.get('/search/tv', queryParameters: {
      'query': query,
    });

    return _jsonToSeries(response.data);
  }

  @override
  Future<List<Serie>> getSeriesByProvider(String providerName,
      {int page = 1}) async {
    const Map<String, String> providerIds = {
      'Netflix': '8',
      'Disney Plus': '337',
      'amazon': '119',
      'max': '1899',
      'apple': '350'
    };

    // permite obtener watchProviderId a partir del nombre del proveedor
    final watchProviderId = providerIds[providerName];

    final response = await dio.get('/discover/tv', queryParameters: {
      'watch_region': 'ES',
      'with_watch_providers': watchProviderId,
      'page': page,
    });

    return _jsonToSeries(response.data);
  }

  @override
  Future<List<Serie>> getRecommendationsSeries(int serieId) async {
    final response = await dio.get('/tv/$serieId/recommendations');
    return _jsonToSeries(response.data);
  }

  @override
  Future<List<Video>> getYoutubeVideosById(int serieId) async {
    final response = await dio.get('/tv/$serieId/videos');
    final moviedbVideosReponse = SerieVideosMovieDb.fromJson(response.data);
    final videos = <Video>[];

    for (final moviedbVideo in moviedbVideosReponse.results) {
      if (moviedbVideo.site == 'YouTube') {
        final video = VideoMapper.moviedbVideoToEntity(moviedbVideo);
        videos.add(video);
      }
    }

    return videos;
  }

  @override
  Future<List<ContentRating>> getContentRatingById(int serieId) async {
    final response = await dio.get('/tv/$serieId/content_ratings');
    final movidbRatingResult =
        SerieContentRatingMovieDb.fromJson(response.data);
    final contentRatings = <ContentRating>[];

    for (final moviedbRating in movidbRatingResult.results) {
      if (moviedbRating.iso31661 == 'ES') {
        final rating = SerieContentRatingMapper.moviedbContentRatingToEntity(
            moviedbRating);
        contentRatings.add(rating);
      }
    }
    return contentRatings;
  }
}
