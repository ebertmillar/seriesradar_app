import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:seriesradar_app/features/serie/domain/entities/serie.dart';
import 'package:seriesradar_app/features/serie/presentation/providers/series/series_repository_provider.dart';
import 'package:seriesradar_app/features/serie/shared/widgets/series/series_horizontal_listview.dart';

final similarSeriesProvider = FutureProvider.family((ref, int serieId) {
  final serieRepository = ref.watch(serieRepositoryProvider);
  return serieRepository.getSimilarSeries(serieId);
});

class SimilarSeries extends ConsumerWidget {
  final int serieId;

  const SimilarSeries({super.key, required this.serieId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final similarSeriesFuture = ref.watch(similarSeriesProvider(serieId));

    return similarSeriesFuture.when(
      data: (series) {
        // Solo mostrar si hay series similares
        if (series.isEmpty) {
          return const SizedBox(); // No mostrar nada si está vacío
        }
        return _Recomendations(series: series);
      },
      error: (_, __) =>
          const Center(child: Text('No se pudo cargar series similares')),
      loading: () =>
          const Center(child: CircularProgressIndicator(strokeWidth: 2)),
    );
  }
}

class _Recomendations extends StatelessWidget {
  final List<Serie> series;

  const _Recomendations({required this.series});

  @override
  Widget build(BuildContext context) {
    return SeriesHorizontalListview(
      series: series,
      height: 310,
    );
  }
}
