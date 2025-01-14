import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seriesradar_app/domain/entities/serie_details.dart';
import 'package:seriesradar_app/helpers/human_formats.dart';
import 'package:seriesradar_app/presentation/providers/series/serie_info_provider.dart';
import 'package:seriesradar_app/shared/widgets/seasons/series_season_horizontal_listview.dart';
import 'package:seriesradar_app/shared/widgets/series/similar_series.dart';

class SerieScreen extends ConsumerStatefulWidget {
  final String serieId;

  const SerieScreen({super.key, required this.serieId});

  @override
  SerieScreenState createState() => SerieScreenState();
}

class SerieScreenState extends ConsumerState<SerieScreen> {
  @override
  void initState() {
    super.initState();

    ref.read(serieInfoProvider.notifier).loadSerie(widget.serieId);
  }

  @override
  Widget build(BuildContext context) {
    final SerieDetails? serie = ref.watch(serieInfoProvider)[widget.serieId];

    if (serie == null) {
      return const Center(
        child: CircularProgressIndicator(strokeWidth: 2),
      );
    }

    return Scaffold(
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          _CustomSliverAppbar(serie: serie),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => _SerieDetails(serie: serie),
                  childCount: 1))
        ],
      ),
    );
  }
}

class _SerieDetails extends StatelessWidget {
  final SerieDetails serie;

  const _SerieDetails({required this.serie});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(serie.name,
                  style: GoogleFonts.lato(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    height: 0,
                    fontSize: 20,
                  )),
              const SizedBox(
                height: 5,
              ),
              Text(
                serie.overview.isNotEmpty == true
                    ? serie.overview
                    : 'No hay una descripción disponible por el momento, pero te invitamos a descubrir por ti mismo por qué esta serie está generando tanto interés. ¡No te la pierdas y dale una oportunidad para ver si se convierte en tu próxima favorita!',
                style: GoogleFonts.roboto(
                  color: Colors.black87,
                  height: 0,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: RichText(
            text: TextSpan(
              style: GoogleFonts.lato(
                fontSize: 20, // Tamaño de fuente compartido
                color: Colors.black87, // Color compartido
              ),
              children: [
                const TextSpan(
                  text: 'Disponible en: ', // Texto en negrita
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: serie.networks
                      .map((network) => network.name)
                      .join(', '), // Texto sin negrita
                  style: GoogleFonts.roboto(
                    color: Colors.black87,
                    fontSize: 18,
                    height: 1.3,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 5), // Espacio entre texto y logos

        // Logos en varias filas
        Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 40, // Espaciado horizontal entre logos
            runSpacing: 5, // Espaciado vertical entre filas de logos
            children: serie.networks.map((network) {
              return Image.network(
                network.logoPath!, // Ruta completa del logo
                width: 80, // Tamaño del logo
                height: 60,
                fit: BoxFit.contain,
              );
            }).toList(),
          ),
        ),
        const SizedBox(
          height: 15,
        ),

        const SizedBox(
          height: 15,
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Temporadas',
                style: GoogleFonts.lato(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SeriesSeasonHorizontalListview(
                seasons: serie.seasons,
                serie: serie,  // Pass the serie.id here
              ),
            ],
          ),
        ),

        const SizedBox(
          height: 5,
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Porque vistes ${serie.name}',
                style: GoogleFonts.lato(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              //* Películas similares
              SimilarSeries(serieId: serie.id),
            ],
          ),
        )        
      ],
    );
  }
}

class _CustomSliverAppbar extends StatelessWidget {
  final SerieDetails serie;

  const _CustomSliverAppbar({required this.serie});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    //final text = Theme.of(context).textTheme;

    return SliverAppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 108,
      expandedHeight: size.height * 0.6, // Imagen al 60% de la pantalla
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            // Imagen de fondo
            Image.network(
              serie.posterPath,
              fit: BoxFit.cover,
            ),
            // Gradiente negro desde la base de la miniatura hacia abajo
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent, // Parte superior transparente
                      Colors.black.withOpacity(0.7), // Negro semiopaco
                      Colors.black, // Negro completamente abajo
                    ],
                    stops: [
                      0.5, // Transparente hasta la mitad
                      0.7, // Negro semiopaco empieza desde aquí
                      1.0 // Negro completamente desde este punto
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        titlePadding:
            const EdgeInsets.only(top: 40, left: 12, right: 12, bottom: 10),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Miniatura del póster
            FadeInLeft(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                  serie.posterPath,
                  width: 60, // Tamaño fijo para la miniatura
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 8),
            // Texto del título, temporadas y popularidad
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Título de la serie
                  Text(serie.name,
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        height: 0,
                        fontSize: 14,
                      )),
                  const SizedBox(height: 3),
                  // Número de temporadas
                  Row(
                    children: [
                      Text(
                          serie.seasons.length > 1
                              ? '${serie.seasons.length} Temporadas |'
                              : '${serie.seasons.length} Temporada |',
                          style: GoogleFonts.roboto(
                            color: Colors.amberAccent.shade700,
                            fontWeight: FontWeight.bold,
                            height: 0,
                            fontSize: 9,
                          )),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                          '${serie.firstAirDate?.year} - ${serie.lastAirDate?.year}',
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            height: 0,
                            fontSize: 9,
                          ))
                    ],
                  ),
                  const SizedBox(height: 3),

                  Text(serie.genres.map((genre) => genre.name).join(', '),
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        height: 0,
                        fontSize: 10,
                      )),

                  const SizedBox(height: 5),

                  Row(
                    children: [
                      const Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                        size: 10,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      serie.adult
                          ? Text(
                              '+16',
                              style: GoogleFonts.roboto(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            )
                          : Text(
                              'Público General',
                              style: GoogleFonts.roboto(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                    ],
                  ),

                  const SizedBox(height: 3),

                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star_half_rounded,
                            color: Colors.amberAccent.shade700,
                            size: 13,
                          ),
                          Text(
                            HumanFormats.number(serie.voteAverage),
                            style: GoogleFonts.roboto(
                                color: Colors.amberAccent.shade700,
                                fontSize: 9,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  )

                  // Popularidad
                  // Text(
                  //   'Popularidad: ${serie.popularity.toStringAsFixed(1)}',
                  //   style: text.bodySmall!.copyWith(
                  //     color: Colors.white70,
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
