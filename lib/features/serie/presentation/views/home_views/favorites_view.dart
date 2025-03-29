import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:seriesradar_app/features/serie/presentation/providers/storage/favorites_series_provider.dart';
import 'package:seriesradar_app/features/serie/shared/widgets/series/serie_masonry.dart';

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

    if (favoriteSeries.isEmpty && isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (favoriteSeries.isEmpty) {
      final colors = Theme.of(context).colorScheme;
      return Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                  'https://www.coloryourname.net/images/coloriages_explications/2426-mini.webp?1743009099',
                  height: 200),
              Text('¡Tu lista está vacía!',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: colors.primary)),
              const SizedBox(height: 10),
              const Text(
                'Aún no has agregado ninguna serie a favoritos.\n\n'
                'Explora y guarda tus series preferidas. ',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.black54),
              ),
              const SizedBox(height: 15),
              FilledButton.tonal(
                onPressed: () => context.go('/'),
                child: const Text('Descubre nuevas series'),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: SerieMasonry(
        series: favoriteSerieList,
        loadNextPage: loadNextPage,
      ),
    );
  }
}
