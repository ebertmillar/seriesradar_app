import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seriesradar_app/domain/entities/serie_details.dart';
import 'package:seriesradar_app/helpers/human_formats.dart';

class SeriesSeasonHorizontalListview extends StatefulWidget {
  final List<Season> seasons;
  final SerieDetails serie;  // Lista de temporadas, no de SerieDetails
  final VoidCallback? loadNextPage;
  final String? title;
  final String? subTitle;
  final TextStyle? style;

  const SeriesSeasonHorizontalListview({
    super.key,
    required this.seasons,  // Cambié 'serie' a 'seasons'
    required this.serie,
    this.loadNextPage,
    this.title,
    this.subTitle, 
    this.style,
  });

  @override
  State<SeriesSeasonHorizontalListview> createState() =>
      _SeriesSeasonHorizontalListviewState();
}

class _SeriesSeasonHorizontalListviewState
    extends State<SeriesSeasonHorizontalListview> {
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (widget.loadNextPage == null) return;

      final pixels = scrollController.position.pixels + 200;
      final maxScrollExtent = scrollController.position.maxScrollExtent;

      if (pixels >= maxScrollExtent) {
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
    return SizedBox(
      height: 350,
      child: Column(
        children: [
          if (widget.title != null || widget.subTitle != null)
            _Title(title: widget.title, subTitle: widget.subTitle),
          Expanded(
            child: ListView.builder(
              controller: scrollController,
              itemCount: widget.seasons.length,  // Usamos la lista de temporadas directamente
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                final season = widget.seasons[index];
                final serie = widget.serie;  // Obtener la temporada correspondiente
                return FadeInRight(
                  child: _Slide(
                    season: season,serie:serie ,  // Pasar la temporada
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class _Title extends StatelessWidget {
  final String? title;
  final String? subTitle;

  const _Title({this.title, this.subTitle});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;

    return Container(
      padding: const EdgeInsets.only(top: 15, bottom: 5),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          if (title != null)
            Text(
              title!,
              style: titleStyle,
            ),
          const Spacer(),
          if (subTitle != null)
            Text(
              subTitle!,
              style: titleStyle,
            ),
        ],
      ),
    );
  }
}


class _Slide extends StatelessWidget {
  final Season season;  // Cambié esto para que reciba una temporada
  final SerieDetails serie;
 
  const _Slide({required this.serie, required this.season});  // Constructor ajustado para recibir Season

  @override
  Widget build(BuildContext context) {
    // Aquí se accede a los detalles de la temporada en lugar de la serie
    final titleStyle = Theme.of(context).textTheme.titleSmall;
    final voteAverageStyle = Theme.of(context).textTheme.bodySmall;
    final popularyStyle = Theme.of(context).textTheme;

    return Container(
      margin: const EdgeInsets.only(left: 0, right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Imagen && Avoted
          GestureDetector(
            onTap: () => context.push('/series/${serie.id}/season/${season.seasonNumber}'),
            child: Stack(
              children: [
                SizedBox(
                  width: 150,
                  height: 225,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    child: Image.network(
                      // Usamos la imagen de la temporada, si está disponible
                      season.posterPath, // Asegúrate de tener el valor correcto para posterPath
                      fit: BoxFit.cover,
                      width: 150,
                      height: 225,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress != null) {
                          return const Center(
                            child: CircularProgressIndicator(strokeWidth: 2),
                          );
                        }
                        return FadeIn(child: child);
                      },
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  height: 225,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent.withOpacity(0.0),
                        Colors.black.withOpacity(0.2),
                        Colors.black.withOpacity(1),
                      ],
                      stops: const [0.0, 0.8, 1.0],
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 1,
                  left: 3,
                  child: Row(
                    children: [
                      Icon(
                        Icons.star_half_rounded,
                        color: Colors.amberAccent.shade400,
                      ),
                      Text(
                        '${season.voteAverage}', // Usamos la calificación de la temporada
                        style: voteAverageStyle?.copyWith(
                          color: Colors.amberAccent.shade400,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 5),

          // Título de la temporada
          SizedBox(
            width: 150,
            child: Text(
              season.name, // Mostramos el nombre de la temporada
              maxLines: 2,
              style: titleStyle,
            ),
          ),

          const SizedBox(height: 5),

          // Popularidad de la temporada
          SizedBox(
            width: 150,
            child: Row(
              children: [
                const Icon(Icons.thumb_up_outlined, color: Colors.black54),
                const SizedBox(width: 5),
                Text(
                  HumanFormats.number(season.voteAverage), // Usamos la popularidad de la temporada
                  style: popularyStyle.bodySmall?.copyWith(color: Colors.black54),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}