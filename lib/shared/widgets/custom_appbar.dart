import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:seriesradar_app/domain/entities/serie.dart';
import 'package:seriesradar_app/presentation/delegates/search_serie_delgate.dart';
import 'package:seriesradar_app/presentation/providers/series/series_repository_provider.dart';

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
                      final serieRepository = ref.read(serieRepositoryProvider);

                      showSearch<Serie?>(
                              context: context,
                              delegate: SearchSerieDelgate(
                                  searchSeries: serieRepository.searchSeries))
                          .then((serie) {
                        if (serie != null) {
                          if (context.mounted) {
                            context.push('/serie/${ serie.id }');        
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
