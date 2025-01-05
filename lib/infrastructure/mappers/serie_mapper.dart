  import 'package:seriesradar_app/domain/entities/serie.dart';
  import 'package:seriesradar_app/helpers/date_helper.dart';
  import 'package:seriesradar_app/infrastructure/models/movie_db/serie_movie_db.dart';

  class SerieMapper {

    static Serie serieDBtoEntity (SerieMovieDb seriedb) => Serie (
      adult: seriedb.adult,
      backdropPath: _getImageUrl(seriedb.backdropPath),
      genreIds: seriedb.genreIds.map((e) => e.toString()).toList(),
      id: seriedb.id,
      originCountry: seriedb.originCountry,
      originalLanguage: seriedb.originalLanguage,
      originalName: seriedb.originalName,
      overview: seriedb.overview,
      popularity: seriedb.popularity,
      posterPath: _getImageUrl(seriedb.posterPath),        
      firstAirDate: DateHelper.parseDate(seriedb.firstAirDate.toString()),
      name: seriedb.name,
      voteAverage: seriedb.voteAverage,
      voteCount: seriedb.voteCount,
    );

    static String _getImageUrl(String? path) {
      return (path != null && path.isNotEmpty)
          ? 'https://image.tmdb.org/t/p/w500$path'
          : 'https://static.displate.com/857x1200/displate/2022-04-15/7422bfe15b3ea7b5933dffd896e9c7f9_46003a1b7353dc7b5a02949bd074432a.jpg';
    }

  }