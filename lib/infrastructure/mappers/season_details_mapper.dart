  import 'package:seriesradar_app/domain/entities/season_details.dart';
  import 'package:seriesradar_app/infrastructure/models/movie_db/season_details_movie_db.dart';

  class SeasonDetailsMapper {
    
      static SeasonDetails serieDetailstoEntity(SeasonDetailsMovieDb seasonDetails) =>
          SeasonDetails(
            id: seasonDetails.id, 
            airDate: seasonDetails.airDate, 
            episodes: seasonDetails.episodes.map((episodes) => EpisodesMapper.episodesToEntity(episodes))
              .toList(),
            name: seasonDetails.name, 
            overview: seasonDetails.overview, 
            seasonDetailsId: seasonDetails.seasonDetailsId, 
            posterPath: _getImageUrl(seasonDetails.posterPath), 
            seasonNumber: seasonDetails.seasonNumber, 
            voteAverage: seasonDetails.voteAverage
          );

          static String _getImageUrl(String? path) {
            return (path != null && path.isNotEmpty)
                ? 'https://image.tmdb.org/t/p/w500$path'
                : 'https://static.displate.com/857x1200/displate/2022-04-15/7422bfe15b3ea7b5933dffd896e9c7f9_46003a1b7353dc7b5a02949bd074432a.jpg';
          }
          

    }


    class EpisodesMapper {
      
    static Episode episodesToEntity(EpisodeMovieDB episode) => Episode(
      airDate: episode.airDate, 
      episodeNumber: episode.episodeNumber, 
      episodeType: episode.episodeType,
      id: episode.id, 
      name: episode.name, 
      overview: episode.overview, 
      productionCode: episode.productionCode, 
      runtime: episode.runtime ?? 0, 
      seasonNumber: episode.seasonNumber, 
      showId: episode.showId, 
      stillPath: _getImageUrl(episode.stillPath), 
      voteAverage: episode.voteAverage, 
      voteCount: episode.voteCount
    );

    static String _getImageUrl(String? path) {
            return (path != null && path.isNotEmpty)
                ? 'https://image.tmdb.org/t/p/w500$path'
                : 'https://static.displate.com/857x1200/displate/2022-04-15/7422bfe15b3ea7b5933dffd896e9c7f9_46003a1b7353dc7b5a02949bd074432a.jpg';
          }
  }
    