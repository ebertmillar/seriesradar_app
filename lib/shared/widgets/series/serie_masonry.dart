import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:seriesradar_app/domain/entities/serie_details.dart';
import 'package:seriesradar_app/shared/widgets/series/serie_poster_link.dart';

class SerieMasonry extends StatefulWidget {
  final List<SerieDetails> series;
  final VoidCallback? loadNextPage;

  const SerieMasonry({super.key, required this.series, this.loadNextPage});

  @override
  State<SerieMasonry> createState() => _SerieMasonryState();
}

class _SerieMasonryState extends State<SerieMasonry> {
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if (widget.loadNextPage == null) return;

      if ((scrollController.position.pixels) >=
          scrollController.position.maxScrollExtent) {
        widget.loadNextPage!();
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: MasonryGridView.count(
        controller: scrollController,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 3,
        itemCount: widget.series.length,
        mainAxisSpacing: 12,
        crossAxisSpacing: 5,
        itemBuilder: (context, index) {
          if (index == 1) {
            return Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                SeriePosterLink(serie: widget.series[index])
              ],
            );
          }
          return SeriePosterLink(serie: widget.series[index]);
        },
      ),
    );
  }
}
