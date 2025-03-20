import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seriesradar_app/presentation/providers/storage/favorites_series_provider.dart';
import 'package:seriesradar_app/shared/widgets/series/serie_masonry.dart';

class FavoritesView extends ConsumerStatefulWidget {
  const FavoritesView({super.key});

  @override
  FavoritesViewState createState() => FavoritesViewState();
}

class FavoritesViewState extends ConsumerState<FavoritesView> {
  bool isLastPage = false;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    loadNextPage();
  }

  void loadNextPage() async {
    if (isLoading || isLastPage) return;

    setState(() {
      isLoading = true;
    });

    final series =
        await ref.read(favoritesSeriesProvider.notifier).loadNextPage();

    setState(() {
      isLoading = false;
    });

    if (series.isEmpty) {
      setState(() {
        isLastPage = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final favoriteSeries = ref.watch(favoritesSeriesProvider);
    final favoriteSerieList = favoriteSeries.values.toList();

    if (favoriteSerieList.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    return Scaffold(
      body: SerieMasonry(
        series: favoriteSerieList,
        loadNextPage: loadNextPage,
      ),
    );
  }
}
