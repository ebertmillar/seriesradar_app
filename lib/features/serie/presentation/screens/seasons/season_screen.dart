import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seriesradar_app/features/auth/domain/entities/user.dart';
import 'package:seriesradar_app/features/auth/presentation/providers/auth_provider.dart';
import 'package:seriesradar_app/features/serie/domain/entities/episode.dart';
import 'package:seriesradar_app/features/serie/domain/entities/season_details.dart';
import 'package:seriesradar_app/features/serie/domain/entities/serie_details.dart';
import 'package:seriesradar_app/features/serie/presentation/providers/season/season_info_provider.dart';
import 'package:seriesradar_app/features/serie/presentation/providers/series/serie_info_provider.dart';
import 'package:seriesradar_app/features/serie/presentation/providers/storage/local_storage_provider.dart';
import 'package:seriesradar_app/features/serie/presentation/providers/storage/viewed_episodes_provider.dart';

class SeasonScreen extends ConsumerStatefulWidget {
  final int serieId; // Recibido como parámetro
  final int seasonNumber; // Recibido como parámetro

  const SeasonScreen(
      {super.key, required this.serieId, required this.seasonNumber});

  @override
  SeasonScreenState createState() => SeasonScreenState();
}

class SeasonScreenState extends ConsumerState<SeasonScreen> {
  @override
  void initState() {
    super.initState();
    ref
        .read(seasonInfoProvider.notifier)
        .loadSeason(widget.serieId, widget.seasonNumber);
  }

  @override
  Widget build(BuildContext context) {
    final seasonMap = ref.watch(seasonInfoProvider);
    final SeasonDetails? season =
        seasonMap["${widget.serieId}-${widget.seasonNumber}"];

    final SerieDetails? serie =
        ref.watch(serieInfoProvider)[widget.serieId.toString()];

    if (season == null) {
      return const Center(
        child: CircularProgressIndicator(strokeWidth: 2),
      );
    }

    return Scaffold(
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          _CustomSliverAppbar(season: season),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            // Suponiendo que cada temporada tiene una lista de episodios
            Episode episode = season.episodes[index];

            return _SeasonDetails(
              season: season, // Si necesitas la temporada completa
              serie: serie!, // La serie asociada
              episode: episode, // Aquí le pasas un episodio
            );
          }, childCount: 1))
        ],
      ),
    );
  }
}

final isViewedEpisodeProvider =
    FutureProvider.family.autoDispose((ref, (int, User) args) {
  final localStorageRepository = ref.watch(localStorageRepositoryProvider);
  return localStorageRepository.isEpisodeViewed(args.$1, args.$2);
});

class _SeasonDetails extends ConsumerStatefulWidget {
  final SeasonDetails season;
  final SerieDetails serie;
  final Episode? episode;

  const _SeasonDetails(
      {required this.season, required this.serie, required this.episode});

  @override
  _SeasonDetailsState createState() => _SeasonDetailsState();
}

class _SeasonDetailsState extends ConsumerState<_SeasonDetails> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(authProvider).user; // Obtiene el usuario autenticado
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Imagen
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    widget.season.posterPath,
                    width: size.width * 0.3,
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.broken_image, size: 80),
                  ),
                ),

                const SizedBox(width: 10),

                // Descripción
                SizedBox(
                  width: (size.width - 40) * 0.7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          text:
                              '${widget.serie.name} - T${widget.season.seasonNumber}',
                          style: GoogleFonts.robotoSlab(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          Text(
                            widget.season.overview,
                            style: GoogleFonts.sourceSans3(
                              color: Colors.black87,
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                            ),
                            maxLines: isExpanded ? null : 5,
                            overflow: TextOverflow.fade,
                          ),
                          if (!isExpanded)
                            Positioned(
                              bottom: 0,
                              right: 0,
                              left: 0,
                              child: Container(
                                height:
                                    40, // Aumenta la altura para un desvanecimiento más amplio
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.white.withOpacity(
                                          0.0), // Transparente al principio
                                      Colors.white.withOpacity(
                                          0.5), // Menos opaco para un desvanecimiento más suave
                                      Colors.white.withOpacity(
                                          0.9), // Asegura un desvanecimiento más fuerte
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    stops: [
                                      0.0,
                                      0.5,
                                      1.0
                                    ], // Ajusta el rango de desvanecimiento
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
                          minimumSize: WidgetStateProperty.all(
                              const Size.fromHeight(50)),
                          side: WidgetStateProperty.all(
                              const BorderSide(color: Colors.transparent)),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          backgroundColor:
                              WidgetStateProperty.all(Colors.transparent),
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
                )
              ],
            ),
          ),

          // Lista de episodios
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Episodios (${widget.season.episodes.length} Episodios)',
                  style: GoogleFonts.robotoSlab(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 3),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: widget.season.episodes.length,
                  itemBuilder: (context, index) {
                    final episode = widget.season.episodes[index];
                    final isViewedEpisode =
                        ref.watch(isViewedEpisodeProvider((episode.id, user!)));

                    return Column(
                      children: [
                        SizedBox(
                          height: 100,
                          child: Row(
                            children: [
                              // Usando Expanded para que cada contenedor ocupe el espacio proporcional
                              Expanded(
                                flex: 4,
                                child: SizedBox(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      height: 100,
                                      widget.season.episodes[index].stillPath,
                                      errorBuilder:
                                          (context, error, stackTrace) =>
                                              const Icon(Icons.broken_image,
                                                  size: 80),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween, // Distribuye los elementos
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Episodio ${episode.episodeNumber}',
                                            style: GoogleFonts.robotoSlab(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 1),
                                          Text(
                                            episode.name,
                                            style: GoogleFonts.robotoSlab(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Duración: ${episode.runtime} minutos',
                                        style: GoogleFonts.roboto(fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Align(
                                  alignment: Alignment
                                      .centerLeft, // Alinea el ícono a la izquierda pero centrado verticalmente
                                  child: IconButton(
                                    onPressed: () async {
                                      await ref
                                          .read(viewedEpisodesProvider.notifier)
                                          .toggleEpisodeViewed(episode);

                                      ref.invalidate(isViewedEpisodeProvider(
                                          (episode.id, user)));
                                    },
                                    icon: isViewedEpisode.when(
                                      data: (isViewedEpisode) => isViewedEpisode
                                          ? const Icon(Icons.remove_red_eye,
                                              color: Colors.blue, size: 20)
                                          : const Icon(Icons.remove_red_eye,
                                              color: Colors.black, size: 20),
                                      error: (_, __) =>
                                          throw UnimplementedError(),
                                      loading: () =>
                                          const CircularProgressIndicator(
                                              strokeWidth: 2),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 3),
                          child: Text(
                            episode.overview,
                            style: GoogleFonts.sourceSans3(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20)
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomSliverAppbar extends StatelessWidget {
  final SeasonDetails season;

  const _CustomSliverAppbar({required this.season});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    //final text = Theme.of(context).textTheme;

    return SliverAppBar(
      leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          )),
      backgroundColor: Colors.white,
      toolbarHeight: 40,
      expandedHeight: size.height * 0.7, // Imagen al 60% de la pantalla
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            // Imagen de fondo
            Image.network(
              season.posterPath,
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
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 0.3],
                colors: [Colors.black87, Colors.transparent]),
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
