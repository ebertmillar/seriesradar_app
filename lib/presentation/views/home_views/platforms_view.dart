import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seriesradar_app/presentation/providers/series/series_streaming_provider.dart';
import 'package:seriesradar_app/shared/widgets/custom_appbar.dart';
import 'package:seriesradar_app/shared/widgets/series/series_horizontal_listview.dart';

class PlatformsView extends ConsumerStatefulWidget {
  const PlatformsView({super.key});

  @override
  PlatfomsViewState createState() => PlatfomsViewState();
}

class PlatfomsViewState extends ConsumerState<PlatformsView> {
  @override
  void initState() {
    super.initState();

    ref.read(seriesByProvider('netflix').notifier).loadNextPage();
    ref.read(seriesByProvider('amazon').notifier).loadNextPage();
    ref.read(seriesByProvider('apple').notifier).loadNextPage();
    ref.read(seriesByProvider('disney').notifier).loadNextPage();
    ref.read(seriesByProvider('max').notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {
    final netflixSeries = ref.watch(seriesByProvider('netflix'));
    final disneySeries = ref.watch(seriesByProvider('disney'));
    final primeVideoSeries = ref.watch(seriesByProvider('amazon'));
    final appleTvSeries = ref.watch(seriesByProvider('apple'));
    final maxSeries = ref.watch(seriesByProvider('max'));

    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            title: CustomAppbar(),
            titlePadding: EdgeInsets.symmetric(horizontal: 2),
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          (context, index) {
            return Column(
              children: [
                //const CustomAppbar(),
                SeriesHorizontalListview(
                    series: netflixSeries,
                    title: 'Series en Netflix',
                    loadNextPage: () => ref
                        .read(seriesByProvider('netflix').notifier)
                        .loadNextPage()),

                SeriesHorizontalListview(
                    series: disneySeries,
                    title: 'Series en Disney +',
                    loadNextPage: () => ref
                        .read(seriesByProvider('disney').notifier)
                        .loadNextPage()),

                SeriesHorizontalListview(
                    series: primeVideoSeries,
                    title: 'Series en Prime Video',
                    loadNextPage: () => ref
                        .read(seriesByProvider('amazon').notifier)
                        .loadNextPage()),

                SeriesHorizontalListview(
                    series: appleTvSeries,
                    title: 'Series en Apple TV',
                    loadNextPage: () => ref
                        .read(seriesByProvider('apple').notifier)
                        .loadNextPage()),

                SeriesHorizontalListview(
                    series: maxSeries,
                    title: 'Series en MAX',
                    loadNextPage: () => ref
                        .read(seriesByProvider('max').notifier)
                        .loadNextPage()),
              ],
            );
          },
          childCount: 1,
        )),
      ],
    );
  }
}
