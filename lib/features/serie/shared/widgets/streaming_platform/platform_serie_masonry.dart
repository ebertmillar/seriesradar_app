import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:seriesradar_app/features/serie/domain/entities/serie.dart';
import 'package:seriesradar_app/features/serie/shared/widgets/streaming_platform/platform_poster_link.dart';

class PlatformSerieMasonry extends StatefulWidget {
  final List<Serie> series;
  final VoidCallback? loadNextPage;
  final String? title;
  final ScrollController scrollController;

  const PlatformSerieMasonry(
      {super.key,
      required this.series,
      this.loadNextPage,
      this.title,
      required this.scrollController});

  @override
  State<PlatformSerieMasonry> createState() => _PlatformSerieMasonryState();
}

class _PlatformSerieMasonryState extends State<PlatformSerieMasonry> {
  @override
  void initState() {
    super.initState();

    widget.scrollController.addListener(() {
      if (widget.loadNextPage == null) return;

      if ((widget.scrollController.position.pixels + 100) >=
          widget.scrollController.position.maxScrollExtent) {
        widget.loadNextPage!();
      }
    });
  }

  @override
  void dispose() {
    widget.scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: ShaderMask(
            shaderCallback: (Rect bounds) {
              return const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent, // Parte superior transparente
                  Colors.white, // Se vuelve visible gradualmente
                ],
                stops: [0.0, 0.1], // Controla qué tan rápido se desvanece
              ).createShader(bounds);
            },
            blendMode: BlendMode.dstIn,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: MasonryGridView.count(
                controller: widget.scrollController,
                //physics: const BouncingScrollPhysics(),
                crossAxisCount: 4,
                itemCount: widget.series.length,
                mainAxisSpacing: 10,
                crossAxisSpacing: 8,
                itemBuilder: (context, index) {
                  if (index == 1) {
                    return Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        PlatformPosterLink(serie: widget.series[index])
                      ],
                    );
                  }
                  if (index == 2) {
                    return Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        PlatformPosterLink(serie: widget.series[index])
                      ],
                    );
                  }
                  return PlatformPosterLink(serie: widget.series[index]);
                },
              ),
            )));
  }
}
