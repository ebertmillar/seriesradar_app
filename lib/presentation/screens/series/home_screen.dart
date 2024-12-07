import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seriesradar_app/presentation/providers/series/series_providers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Home')), body: const _HomeView());
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView();

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<_HomeView> {
  @override
  void initState() {
    super.initState();

    ref.read(popularSeriesProvider.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {
    final series = ref.watch(popularSeriesProvider);

    return series.isEmpty
      ? const Center(child: CircularProgressIndicator())
      : ListView.builder(
          itemCount: series.length,
          itemBuilder: (context, index) {
            final serie = series[index];
            return ListTile(
              leading: serie.posterPath != null
                  ? Image.network(serie.posterPath!,
                      fit: BoxFit.cover, width: 50)
                  : const Icon(Icons.tv),
              title: Text(serie.name),
              subtitle: Text(
                serie.overview,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            );
          },
        );
  }
}
