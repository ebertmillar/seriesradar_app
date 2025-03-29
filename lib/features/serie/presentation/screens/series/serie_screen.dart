import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seriesradar_app/features/auth/domain/entities/user.dart';
import 'package:seriesradar_app/features/auth/presentation/providers/auth_provider.dart';
import 'package:seriesradar_app/features/serie/domain/entities/serie_details.dart';
import 'package:seriesradar_app/features/serie/shared/widgets/series/recommendations_series.dart';
import 'package:seriesradar_app/features/serie/shared/widgets/videos/videos_from_serie.dart';
import 'package:seriesradar_app/helpers/human_formats.dart';
import 'package:seriesradar_app/features/serie/presentation/providers/series/serie_info_provider.dart';
import 'package:seriesradar_app/features/serie/presentation/providers/storage/favorites_series_provider.dart';
import 'package:seriesradar_app/features/serie/presentation/providers/storage/local_storage_provider.dart';
import 'package:seriesradar_app/features/serie/shared/widgets/seasons/series_season_horizontal_listview.dart';
import 'package:seriesradar_app/features/serie/shared/widgets/series/similar_series.dart';

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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Titulo y Overview
          _TitleAndOverwiev(
            serie: serie,
          ),

          //Plataformas de Tv donde se pueden ver
          _TvNetworks(
            serie: serie,
          ),

          const SizedBox(
            height: 10,
          ),

          //Lista horizontal de temporadas para la serie seleccionada
          _SeasonsSeries(
            serie: serie,
          ),

          const SizedBox(
            height: 5,
          ),

          //* Videos de la serie (si tiene)
          VideosFromSerie(serieId: serie.id),

          //Lista horizontal de series similares
          _SeriesSimilares(
            serie: serie,
          ),

          //Lista horizontal de series similares
          _SeriesRecommendations(
            serie: serie,
          ),
        ],
      ),
    );
  }
}

class _SeriesRecommendations extends StatelessWidget {
  final SerieDetails serie;

  const _SeriesRecommendations({required this.serie});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Text(
            'Series Recomendadas',
            style: GoogleFonts.robotoSlab(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        //* Series similares
        RecommendationsSeries(serieId: serie.id),
      ],
    );
  }
}

class _SeriesSimilares extends StatelessWidget {
  final SerieDetails serie;

  const _SeriesSimilares({required this.serie});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Text(
            'Series similares a ${serie.name}',
            style: GoogleFonts.robotoSlab(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        //* Series similares
        SimilarSeries(serieId: serie.id),
      ],
    );
  }
}

class _SeasonsSeries extends StatelessWidget {
  final SerieDetails serie;

  const _SeasonsSeries({required this.serie});
  @override
  Widget build(BuildContext context) {
    // Filtramos las temporadas para excluir aquellas cuyo nombre sea "Especiales"
    final filteredSeasons =
        serie.seasons.where((season) => season.name != 'Especiales').toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Text(
            filteredSeasons.length == 1 ? 'Temporada' : 'Temporadas',
            style: GoogleFonts.robotoSlab(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SeriesSeasonHorizontalListview(
          seasons: filteredSeasons,
          serie: serie,
        ),
      ],
    );
  }
}

class _TvNetworks extends StatelessWidget {
  final SerieDetails serie;

  const _TvNetworks({required this.serie});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Disponible en: ', // Texto en negrita
                  style: GoogleFonts.robotoSlab(
                    fontSize: 20, // Tamaño de fuente compartido
                    color: Colors.black87, // Color compartido
                    fontWeight: FontWeight.bold,
                  ),
                ),
                serie.networks.isEmpty ||
                        serie.networks.every((network) => network.name.isEmpty)
                    ? TextSpan(
                        text:
                            'No hay información sobre las plataformas donde se puede ver esta serie.',
                        style: GoogleFonts.sourceSans3(
                          color: Colors.black54,
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                        ),
                      )
                    : TextSpan(
                        text: serie.networks
                            .map((network) => network.name)
                            .join(', '), // Texto sin negrita
                        style: GoogleFonts.roboto(
                          color: Colors.black87,
                          fontSize: 16,
                          height: 1.3,
                        ),
                      ),
              ],
            ),
          ),
        ),

        const SizedBox(
          height: 10,
        ),
        // Logos en varias filas
        Center(
          child: Wrap(
            alignment: WrapAlignment.spaceEvenly,
            spacing: 50, // Espaciado horizontal entre logos
            runSpacing: 5, // Espaciado vertical entre filas de logos
            children: serie.networks.map((network) {
              return Image.network(
                network.logoPath!, // Ruta completa del logo
                width: 75, // Tamaño del logo
                height: 65,
                fit: BoxFit.contain,
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}

class _TitleAndOverwiev extends StatefulWidget {
  final SerieDetails serie;

  const _TitleAndOverwiev({required this.serie});

  @override
  State<_TitleAndOverwiev> createState() => _TitleAndOverwievState();
}

class _TitleAndOverwievState extends State<_TitleAndOverwiev> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    String overviewText = widget.serie.overview.isNotEmpty
        ? widget.serie.overview
        : 'Lo sentimos, no hay información disponible en este momento sobre este programa o serie. Sin embargo, te invitamos a sumergirte en su universo y descubrir más conforme se vayan revelando nuevos detalles. ¡Mantente conectado para no perderte las próximas actualizaciones y sorpresas que traerá!';

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.serie.name,
              style: GoogleFonts.robotoSlab(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                height: 1.2, // Ajuste de altura de línea
                fontSize: 20,
              )),
          const SizedBox(height: 5),
          Stack(
            children: [
              Text(
                overviewText,
                style: GoogleFonts.sourceSans3(
                  color: Colors.black87,
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
                maxLines: isExpanded ? null : 4,
                overflow: TextOverflow.fade,
              ),
              if (!isExpanded)
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.white.withOpacity(0.0),
                          Colors.white.withOpacity(0.5),
                          Colors.white.withOpacity(0.9),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          TextButton(
            onPressed: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            style: ButtonStyle(
              minimumSize: WidgetStateProperty.all(const Size.fromHeight(50)),
              side: WidgetStateProperty.all(
                  BorderSide(color: Colors.grey.shade100)),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              backgroundColor: WidgetStateProperty.all(Colors.transparent),
            ),
            child: Text(
              isExpanded ? 'Mostrar menos' : 'Mostrar más',
              style: GoogleFonts.roboto(
                color: Colors.blue,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final isFavoriteProvider =
    FutureProvider.family.autoDispose((ref, (int, User) args) {
  final localStorageRepository = ref.watch(localStorageRepositoryProvider);
  return localStorageRepository.isSerieFavorite(args.$1, args.$2);
});

class _CustomSliverAppbar extends ConsumerWidget {
  final SerieDetails serie;

  const _CustomSliverAppbar({required this.serie});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    //final text = Theme.of(context).textTheme;

    final user = ref.watch(authProvider).user; // Obtiene el usuario autenticado
    final isFavoriteSerie = ref.watch(isFavoriteProvider((serie.id, user!)));

    return SliverAppBar(
      actions: [
        IconButton(
            onPressed: () async {
              await ref
                  .read(favoritesSeriesProvider.notifier)
                  .toggleFavorite(serie);

              ref.invalidate(isFavoriteProvider((serie.id, user)));
            },
            icon: isFavoriteSerie.when(
              data: (isFavorite) => isFavorite
                  ? const Icon(
                      Icons.favorite_rounded,
                      color: Colors.red,
                    )
                  : const Icon(Icons.favorite_border_sharp),
              error: (_, __) => throw UnimplementedError(),
              loading: () => const CircularProgressIndicator(strokeWidth: 2),
            ))
      ],
      leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new_rounded)),
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      toolbarHeight: 108,
      expandedHeight: size.height * 0.7, // Imagen al 70% de la pantalla
      pinned: false,
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
                    stops: const [
                      0.5, // Transparente hasta la mitad
                      0.7, // Negro semiopaco empieza desde aquí
                      1.0 // Negro completamente desde este punto
                    ],
                  ),
                ),
              ),
            ),

            const _CustomGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [0.0, 0.3],
                colors: [Colors.black87, Colors.transparent]),

            const _CustomGradient(begin: Alignment.topLeft, stops: [
              0.0,
              0.3
            ], colors: [
              Colors.black87,
              Colors.transparent,
            ]),

            const _CustomGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 0.3],
                colors: [Colors.black87, Colors.transparent]),
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
                      style: GoogleFonts.robotoSlab(
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
                        serie.seasons
                                    .where((season) =>
                                        season.name !=
                                        'Especiales') // Filtra las temporadas
                                    .length >
                                1
                            ? '${serie.seasons.where((season) => season.name != 'Especiales').length} Temporadas |'
                            : '${serie.seasons.where((season) => season.name != 'Especiales').length} Temporada |',
                        style: GoogleFonts.sourceSans3(
                          color: Colors.amberAccent.shade700,
                          fontWeight: FontWeight.bold,
                          height: 0,
                          fontSize: 9.5,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                          '${serie.firstAirDate?.year} - ${serie.lastAirDate?.year}',
                          style: GoogleFonts.sourceSans3(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            height: 0,
                            fontSize: 9.5,
                          ))
                    ],
                  ),
                  const SizedBox(height: 3),

                  Text(serie.genres.map((genre) => genre.name).join(', '),
                      style: GoogleFonts.sourceSans3(
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
                              style: GoogleFonts.sourceSans3(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            )
                          : Text(
                              'Público General',
                              style: GoogleFonts.sourceSans3(
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

class _CustomGradient extends StatelessWidget {
  final AlignmentGeometry begin;
  final AlignmentGeometry end;
  final List<Color> colors;
  final List<double> stops;

  const _CustomGradient(
      {this.begin = Alignment.centerLeft,
      this.end = Alignment.centerRight,
      required this.colors,
      required this.stops});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
        child: DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: begin, end: end, stops: stops, colors: colors),
      ),
    ));
  }
}
