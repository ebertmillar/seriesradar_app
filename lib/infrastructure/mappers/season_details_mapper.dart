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
            posterPath: seasonDetails.posterPath, 
            seasonNumber: seasonDetails.seasonNumber, 
            voteAverage: seasonDetails.voteAverage
          );
          

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
      runtime: episode.runtime, 
      seasonNumber: episode.seasonNumber, 
      showId: episode.showId, 
      stillPath: episode.stillPath, 
      voteAverage: episode.voteAverage, 
      voteCount: episode.voteCount
    );
  }
    