import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:seriesradar_app/domain/entities/serie.dart';
import 'package:seriesradar_app/presentation/providers/series/series_repository_provider.dart';
import 'package:seriesradar_app/shared/widgets/series/series_horizontal_listview.dart';


final similarSeriesProvider = FutureProvider.family((ref, int movieId) {
  final movieRepository = ref.watch(serieRepositoryProvider);
  return movieRepository.getSimilarSeries(movieId);
});

class SimilarSeries extends ConsumerWidget {

  final int serieId;

  const SimilarSeries({super.key, required this.serieId});

  @override
  Widget build(BuildContext context, WidgetRef ref ) {
    final similarMoviesFuture = ref.watch(similarSeriesProvider(serieId));

    return similarMoviesFuture.when(
      data: ( series) => _Recomendations( series: series ), 
      error: (_ , __) => const Center(child: Text('No se pudo cargar películas similares') ), 
      loading: () => const Center(child: CircularProgressIndicator(strokeWidth: 2)),
    );
  }
}

class _Recomendations extends StatelessWidget {
  final List<Serie> series;

  const _Recomendations({ required this.series });

  @override
  Widget build(BuildContext context) {

    if ( series.isEmpty ) return const SizedBox();

    return Container(
      margin: const EdgeInsetsDirectional.only(bottom: 50),
      child: SeriesHorizontalListview(series: series),
    );
  }
}