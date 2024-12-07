import 'package:dio/dio.dart';
import 'package:seriesradar_app/config/constans/environment.dart';
import 'package:seriesradar_app/domain/datasources/series_datasources.dart';
import 'package:seriesradar_app/domain/entities/serie.dart';
import 'package:seriesradar_app/infrastructure/mappers/serie_mapper.dart';
import 'package:seriesradar_app/infrastructure/models/movie_db/movie_db_response.dart';

class SeriesDatasourcesImpl extends SeriesDatasources {
  final dio = Dio(BaseOptions(
    baseUrl: 'https://api.themoviedb.org/3',
    queryParameters: {
      'api_key': Environment.theMovieDBKey,
      'language': 'es-ES'
    }));

  @override
  Future<List<Serie>> discoverSeries({Map<String, dynamic>? filters}) {
    // TODO: implement discoverSeries
    throw UnimplementedError();
  }

  @override
  Future<List<Serie>> getPopularSeries({int page = 1}) async {
    final response = await dio.get('/tv/popular');
    final serieDBResponse = MovieDbResponse.fromJson(response.data);

    final List<Serie> series = serieDBResponse.results
      .map((seriedb) => SerieMapper.serieDBtoEntity(seriedb))
      .toList();

    return series;
  }

  @override
  Future<Serie> getSerieDetails(int id) {
    // TODO: implement getSerieDetails
    throw UnimplementedError();
  }
}
