import 'package:animate_do/animate_do.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:seriesradar_app/domain/entities/serie.dart';

class SeriesSlideshow extends StatelessWidget {
  final List<Serie> series;

  const SeriesSlideshow({super.key, required this.series});

  @override
  Widget build(BuildContext context) {

    //final color = Theme.of(context).colorScheme;

    return SizedBox(
      height: 230,
      width: double.infinity,
      child: Swiper(
        viewportFraction: 0.8,
        scale: 0.9,
        autoplay: true,
        pagination: const SwiperPagination(
          margin: EdgeInsets.only(top: 15),
          builder: DotSwiperPaginationBuilder(
            activeColor: Colors.black12,
            color: Colors.black45,
          ),
        ),
        itemCount: series.length,
        itemBuilder: (context, index) {
          final serie = series[index];
          return _Slide(serie: serie);
        },
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final Serie serie;
  const _Slide({required this.serie});

  @override
  Widget build(BuildContext context) {

    final decoration = BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      boxShadow: const [
        BoxShadow(
          color: Colors.black38,
          blurRadius: 10,
          offset: Offset(0, 9)
        )
      ]
    );

    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: DecoratedBox(
        decoration: decoration,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            serie.backdropPath!,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress != null) {
                return const DecoratedBox(
                    decoration: BoxDecoration(color: Colors.black12));
              }
              return FadeIn(child: child);
            },
          ),
        ),
      ),
    );
  }
}
