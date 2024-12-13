import 'package:seriesradar_app/domain/datasources/series_datasources.dart';
import 'package:seriesradar_app/domain/entities/serie.dart';
import 'package:seriesradar_app/domain/repositories/series_repository.dart';

class SeriesRepositoryImpl extends SeriesRepository {

  final SeriesDatasources datasources;

  SeriesRepositoryImpl(this.datasources);

  @override
  Future<List<Serie>> discoverSeries({Map<String, dynamic>? filters}) {
    // TODO: implement discoverSeries
    throw UnimplementedError();
  }

  @override
  Future<List<Serie>> getPopularSeries({ int page = 1 }) async{
    return await datasources.getPopularSeries( page: page );
  }

  @override
  Future<Serie> getSerieDetails(int id) {
    // TODO: implement getSerieDetails
    throw UnimplementedError();
  }
  
  @override
  Future<List<Serie>> getAiringToday({int page = 1}) async {
    return await datasources.getAiringToday( page: page );
  }
  
  @override
  Future<List<Serie>> getOnTheAir({int page = 1}) async {
    return await datasources.getOnTheAir( page: page );
  }
  
  @override
  Future<List<Serie>> getTopRated({int page = 1}) async {
    return await datasources.getTopRated( page: page );
  }


}