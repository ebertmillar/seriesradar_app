import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:seriesradar_app/domain/entities/serie.dart';
import 'package:seriesradar_app/presentation/delegates/search_serie_delgate.dart';
import 'package:seriesradar_app/presentation/providers/search/search_series_provider.dart';

class CustomAppbar extends ConsumerWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleAppBar = Theme.of(context).textTheme;

    return SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                const Icon(Icons.movie_creation),
                const SizedBox(
                  width: 5,
                ),
                Text('SeriesRadar', style: titleAppBar.titleMedium),
                const Spacer(),
                IconButton(
                    onPressed: () {
                      final searchedSeries = ref.read(searchedSeriesProvider);
                      final searchQuery = ref.read(searchQueryProvider);

                      showSearch<Serie?>(
                              query: searchQuery,
                              context: context,
                              delegate: SearchSerieDelgate(
                                  initialSeries: searchedSeries,
                                  searchSeries: ref
                                      .read(searchedSeriesProvider.notifier)
                                      .searchSeriesByQuery))
                          .then((serie) {
                        if (serie != null) {
                          if (context.mounted) {
                            context.push('/serie/${serie.id}');
                          }
                        }
                      });
                    },
                    icon: const Icon(Icons.search_outlined))
              ],
            ),
          ),
        ));
  }
}
