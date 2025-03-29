import 'package:seriesradar_app/features/serie/domain/entities/video.dart';
import 'package:seriesradar_app/features/serie/infrastructure/models/movie_db/serie_videos_movie_db.dart';

class VideoMapper {
  static moviedbVideoToEntity(VideosResult moviedbVideo) => Video(
      id: moviedbVideo.id,
      name: moviedbVideo.name,
      youtubeKey: moviedbVideo.key,
      publishedAt: moviedbVideo.publishedAt);
}
