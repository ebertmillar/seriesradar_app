import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seriesradar_app/features/serie/domain/entities/content_rating.dart';
import 'package:seriesradar_app/features/serie/presentation/providers/series/series_repository_provider.dart';

final FutureProviderFamily<List<ContentRating>, int>
    contentRatingsFromSerieProvider = FutureProvider.family((ref, int serieId) {
  final serieRepository = ref.watch(serieRepositoryProvider);
  return serieRepository.getContentRatingById(serieId);
});
