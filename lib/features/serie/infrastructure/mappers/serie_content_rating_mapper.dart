import 'package:seriesradar_app/features/serie/domain/entities/content_rating.dart';
import 'package:seriesradar_app/features/serie/infrastructure/models/movie_db/serie_content_rating_movie_db.dart';

class SerieContentRatingMapper {
  static moviedbContentRatingToEntity(ContentRatingResult moviedbRating) =>
      ContentRating(
          iso31661: moviedbRating.iso31661, rating: moviedbRating.rating);
}
