class SerieContentRatingMovieDb {
  final List<ContentRatingResult> results;
  final int id;

  SerieContentRatingMovieDb({
    required this.results,
    required this.id,
  });

  factory SerieContentRatingMovieDb.fromJson(Map<String, dynamic> json) =>
      SerieContentRatingMovieDb(
        results: List<ContentRatingResult>.from(
            json["results"].map((x) => ContentRatingResult.fromJson(x))),
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
        "id": id,
      };
}

class ContentRatingResult {
  final String iso31661;
  final String rating;

  ContentRatingResult({
    required this.iso31661,
    required this.rating,
  });

  factory ContentRatingResult.fromJson(Map<String, dynamic> json) =>
      ContentRatingResult(
        iso31661: json["iso_3166_1"],
        rating: json["rating"],
      );

  Map<String, dynamic> toJson() => {
        "iso_3166_1": iso31661,
        "rating": rating,
      };
}
