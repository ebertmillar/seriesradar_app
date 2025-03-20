import 'package:seriesradar_app/infrastructure/models/movie_db/provider_movie_db.dart';

class MovieDbProviderResponse {
  final List<ProviderMovieDB> results;

  MovieDbProviderResponse({
    required this.results,
  });

  factory MovieDbProviderResponse.fromJson(Map<String, dynamic> json) =>
      MovieDbProviderResponse(
        results: List<ProviderMovieDB>.from(
            json["results"].map((x) => ProviderMovieDB.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}
