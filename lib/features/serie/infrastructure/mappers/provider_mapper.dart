import 'package:seriesradar_app/features/serie/domain/entities/watch_provider.dart';
import 'package:seriesradar_app/features/serie/infrastructure/models/movie_db/provider_movie_db.dart';

class ProviderMapper {
  static WatchProvider providerDBtoEntity(ProviderMovieDB providerDB) =>
      WatchProvider(
          logoPath: _getImageUrl(providerDB.logoPath),
          providerName: providerDB.providerName,
          providerId: providerDB.providerId);

  static String _getImageUrl(String? path) {
    return (path != null && path.isNotEmpty)
        ? 'https://image.tmdb.org/t/p/w200$path'
        : 'https://static.displate.com/857x1200/displate/2022-04-15/7422bfe15b3ea7b5933dffd896e9c7f9_46003a1b7353dc7b5a02949bd074432a.jpg';
  }
}
