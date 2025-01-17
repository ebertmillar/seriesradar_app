import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seriesradar_app/domain/entities/season_details.dart';
import 'package:seriesradar_app/domain/entities/serie_details.dart';
import 'package:seriesradar_app/presentation/providers/season/season_info_provider.dart';
import 'package:seriesradar_app/presentation/providers/series/serie_info_provider.dart';

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
              delegate: SliverChildBuilderDelegate(
                  (context, index) => _SeasonDetails(
                        season: season,
                        serie: serie!,
                      ),
                  childCount: 1))
        ],
      ),
    );
  }
}

class _SeasonDetails extends StatefulWidget {
  final SeasonDetails season;
  final SerieDetails serie;

  const _SeasonDetails({required this.season, required this.serie});

  @override
  State<_SeasonDetails> createState() => _SeasonDetailsState();
}

class _SeasonDetailsState extends State<_SeasonDetails> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
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
                      Text(
                        widget.serie.name,
                        style: GoogleFonts.lato(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),

                      // Descripción con expansión
                      Stack(children: [
                        Text(
                          widget.season.overview,
                          style: GoogleFonts.lato(
                            color: Colors.black87,
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                          ),
                          maxLines: isExpanded ? null : 3,
                          overflow: TextOverflow.fade,
                        ),
                        if (!isExpanded)
                          Positioned(
                            bottom: 0,
                            right: 0,
                            left: 0,
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    const Color.fromARGB(0, 247, 247, 247),
                                    Colors.white.withOpacity(0.7),
                                    Colors.white,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                            ),
                          ),
                      ]),

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
                  'Episodios (${widget.season.episodes.length} episodios)',
                  style: GoogleFonts.lato(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 10),

                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: widget.season.episodes.length,
                  itemBuilder: (context, index) {
                    final episode = widget.season.episodes[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          
                          const SizedBox(height: 5),
                          Row(
                            
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.network(
                                  width: 150,
                                  height: 80,
                                  widget.season.episodes[index].stillPath,
                                  errorBuilder: (context, error, stackTrace) =>
                                      const Icon(Icons.broken_image, size: 80),
                                      fit: BoxFit.cover,
                                ),
                              ),
                              
                              
                          
                              const SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Episodio ${episode.episodeNumber}',
                                      style: GoogleFonts.lato(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),                                      
                                    ),
                          
                                    const SizedBox(height: 1),
                          
                                    Text(
                                      episode.name,
                                      style: GoogleFonts.roboto(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),                                      
                                    ),
                          
                                    const SizedBox(height: 15),
                          
                                    Text(
                                      'Duración: ${episode.runtime } minutos',
                                      style: GoogleFonts.roboto(fontSize: 14),
                                    ),
                          
                                  ],
                                ),                                  
                               
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),

                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text(
                              episode.overview,
                              style: GoogleFonts.roboto(
                                fontSize: 14,
                              ),                                      
                            ),
                          ),
                          const SizedBox(height: 25)
                        ],
                      ),
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
      backgroundColor: Colors.black,
      toolbarHeight: 10,
      expandedHeight: size.height * 0.7, // Imagen al 60% de la pantalla
      pinned: true,
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
          ],
        ),
      ),
    );
  }
}
