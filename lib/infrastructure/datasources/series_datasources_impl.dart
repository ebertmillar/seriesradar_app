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
      'language': 'es-ES' // Configuración del idioma
    }));

  @override
  Future<List<Serie>> discoverSeries({Map<String, dynamic>? filters}) {
    // TODO: implement discoverSeries
    throw UnimplementedError();
  }

  @override
  Future<List<Serie>> getPopularSeries({int page = 1}) async {
    final response = await dio.get('/tv/popular',
      queryParameters: {
        'page' :page,
      }
    );

    final serieDBResponse = MovieDbResponse.fromJson(response.data);

    // Convertir los resultados en entidades Serie
    final List<Serie> series = serieDBResponse.results
        .map((seriedb) => SerieMapper.serieDBtoEntity(seriedb))
        .toList();
    
    // Ordenar las series por voteAverage (descendente)
    //series.sort((a, b) => b.voteAverage.compareTo(a.voteAverage));

    

    return series;
  }

  @override
  Future<Serie> getSerieDetails(int id) {
    // TODO: implement getSerieDetails
    throw UnimplementedError();
  }
}
