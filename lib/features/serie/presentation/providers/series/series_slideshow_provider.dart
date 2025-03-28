import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seriesradar_app/features/serie/domain/entities/serie.dart';
import 'package:seriesradar_app/features/serie/presentation/providers/series/series_providers.dart';

final serisSlideShowProvider = Provider<List<Serie>>((ref) {
  final popularSeries = ref.watch(topRatedProvider);

  if (popularSeries.isEmpty) return [];

  return popularSeries.sublist(0, 8);
});
