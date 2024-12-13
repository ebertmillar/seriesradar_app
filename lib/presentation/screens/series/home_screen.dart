import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seriesradar_app/presentation/providers/series/initial_loading_provider.dart';
import 'package:seriesradar_app/presentation/providers/series/series_providers.dart';
import 'package:seriesradar_app/presentation/providers/series/series_slideshow_provider.dart';
import 'package:seriesradar_app/shared/widgets/custom_appbar.dart';
import 'package:seriesradar_app/shared/widgets/full_screen_loader.dart';
import 'package:seriesradar_app/shared/widgets/series/series_horizontal_listview.dart';
import 'package:seriesradar_app/shared/widgets/series/series_slideshow.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: _HomeView());
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
    ref.read(airingTodayProvider.notifier).loadNextPage();
    ref.read(onTheAirProvider.notifier).loadNextPage();
    ref.read(topRatedProvider.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {
    
    final initialLoading = ref.watch(initialLoadingProvider);
    if(initialLoading) return const FullScreenLoader();

    final slideShowSeries = ref.watch(serisSlideShowProvider);
    final popularSeries = ref.watch(popularSeriesProvider);
    final airingTodaySeries = ref.watch(airingTodayProvider);
    final onTheAirSeries= ref.watch(onTheAirProvider);
    final topRatedSeries = ref.watch(topRatedProvider);

    return CustomScrollView(
      slivers: [

        const SliverAppBar(
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            title: CustomAppbar(),
            titlePadding: EdgeInsets.symmetric(horizontal: 2),
          ),
        ),

        SliverList(delegate: SliverChildBuilderDelegate(
          (context, index) {
            return Column(
              children: [
                //const CustomAppbar(),
                SeriesSlideshow(series:slideShowSeries),
                SeriesHorizontalListview(
                  series: airingTodaySeries,
                  title: 'Estrenos de hoy',
                  loadNextPage: () => ref.read(airingTodayProvider.notifier).loadNextPage()
                ),
            
                SeriesHorizontalListview(
                  series: onTheAirSeries,
                  title: 'Episodios nuevos',
                  loadNextPage: () => ref.read(onTheAirProvider.notifier).loadNextPage()
                ),
            
                SeriesHorizontalListview(
                  series: popularSeries,
                  title: 'populares',
                  loadNextPage: () => ref.read(popularSeriesProvider.notifier).loadNextPage()
                ),
            
                SeriesHorizontalListview(
                  series: topRatedSeries,
                  title: 'Mejor Calificadas',
                  loadNextPage: () => ref.read(topRatedProvider.notifier).loadNextPage()
                ),
              ],
            );
          },
          childCount: 1,
        )),

      ],
    );
      
  }
}
