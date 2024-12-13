
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seriesradar_app/presentation/providers/series/series_providers.dart';

final initialLoadingProvider = Provider<bool>((ref){
  final step1 = ref.watch(popularSeriesProvider).isEmpty;
  final step2 = ref.watch(airingTodayProvider).isEmpty;
  final step3 = ref.watch(onTheAirProvider).isEmpty;
  final step4 = ref.watch(topRatedProvider).isEmpty;

  if(step1 || step2 || step3 || step4) return true;

  return false;
});