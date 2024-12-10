import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seriesradar_app/presentation/providers/series/series_providers.dart';
import 'package:seriesradar_app/presentation/providers/series/series_slideshow_provider.dart';
import 'package:seriesradar_app/shared/widgets/custom_appbar.dart';
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
  }

  @override
  Widget build(BuildContext context) {
    //final series = ref.watch(popularSeriesProvider);
    final slideShowSeries = ref.watch(serisSlideShowProvider);

    return Column(
      children: [
        const CustomAppbar(),
        SeriesSlideshow(series:slideShowSeries)
       
      ],
    );
  }
}
