import 'package:seriesradar_app/infrastructure/models/movie_db/serie_movie_db.dart';

class MovieDbResponse {
  final int page;
  final List<SerieMovieDb> results;
  final int totalPages;
  final int totalResults;

  MovieDbResponse({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  factory MovieDbResponse.fromJson(Map<String, dynamic> json) =>
      MovieDbResponse(
        page: json["page"],
        results: List<SerieMovieDb>.from(
            json["results"].map((x) => SerieMovieDb.fromJson(x))),
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
        "total_pages": totalPages,
        "total_results": totalResults,
      };
}
