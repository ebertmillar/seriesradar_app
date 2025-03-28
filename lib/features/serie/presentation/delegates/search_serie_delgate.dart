import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seriesradar_app/features/serie/domain/entities/serie.dart';
import 'package:seriesradar_app/helpers/human_formats.dart';

typedef SearchSeriesCallback = Future<List<Serie>> Function(String query);

class SearchSerieDelgate extends SearchDelegate<Serie?> {
  final SearchSeriesCallback searchSeries;
  List<Serie> initialSeries;

  StreamController<List<Serie>> debounceSeries = StreamController.broadcast();
  StreamController<bool> isLoadingStream = StreamController.broadcast();
  Timer? _debounceTimer;

  SearchSerieDelgate({
    required this.searchSeries,
    required this.initialSeries,
  });

  void clearStreams() {
    debounceSeries.close();
  }

  void _onQueryChanged(String query) {
    isLoadingStream.add(true);

    if (_debounceTimer?.isActive ?? false) _debounceTimer!.cancel();

    _debounceTimer = Timer(const Duration(milliseconds: 300), () async {
      // if (query.isEmpty) {
      //   if (!debounceSeries.isClosed) {
      //     debounceSeries.add(
      //         []); //conservar datos en pantalla hasta que el usuario deje de escribir
      //     return;
      //   }
      // }

      final series = await searchSeries(query);
      if (!debounceSeries.isClosed) {
        initialSeries = series;
        debounceSeries.add(series);
        isLoadingStream.add(false);
      }
    });
  }

  @override
  String? get searchFieldLabel => 'Buscar serie';

  Widget buildResultsAndSuggestions(
      {Widget Function(Widget child)? animationWrapper}) {
    return StreamBuilder(
      initialData: initialSeries,
      stream: debounceSeries.stream,
      builder: (context, snapshot) {
        final series = snapshot.data ?? [];

        Widget listView = ListView.builder(
          itemCount: series.length,
          itemBuilder: (context, index) => _SerieItem(
            serie: series[index],
            onSerieSelected: (context, serie) {
              clearStreams();
              close(context, serie);
            },
          ),
        );

        // Aplicar la animación solo si se proporciona
        return animationWrapper != null ? animationWrapper(listView) : listView;
      },
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      StreamBuilder(
          initialData: false,
          stream: isLoadingStream.stream,
          builder: (context, snapshot) {
            if (snapshot.data ?? false) {
              return SpinPerfect(
                duration: const Duration(seconds: 2),
                spins: 10,
                infinite: true,
                child: IconButton(
                    onPressed: () => query = '',
                    icon: const Icon(Icons.refresh)),
              );
            }
            return FadeIn(
              animate: query.isNotEmpty,
              duration: const Duration(milliseconds: 200),
              child: IconButton(
                  onPressed: () => query = '', icon: const Icon(Icons.clear)),
            );
          }),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          clearStreams();
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back_ios_new_outlined));
  }

  @override
  Widget buildResults(BuildContext context) {
    return buildResultsAndSuggestions(
        animationWrapper: (child) => FadeIn(
              duration: const Duration(milliseconds: 700),
              child: child,
            ));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    _onQueryChanged(query);

    return buildResultsAndSuggestions(
        animationWrapper: (child) => FadeInLeft(
              duration: const Duration(milliseconds: 700),
              child: child,
            ));
  }
}

class _SerieItem extends StatelessWidget {
  final Serie serie;
  final Function onSerieSelected;

  const _SerieItem({required this.serie, required this.onSerieSelected});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        onSerieSelected(context, serie);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Row(
          children: [
            //Imagen
            SizedBox(
              width: size.width * 0.25,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(serie.posterPath!),
              ),
            ),

            //Descripcion
            SizedBox(
              width: size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      serie.name,
                      style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        height: 0,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      (serie.overview.isNotEmpty)
                          ? (serie.overview.length > 100
                              ? '${serie.overview.substring(0, 100)}...'
                              : serie.overview)
                          : 'No hay descripción disponible para esta serie en este momento. ¡Podría ser justo lo que estás buscando!',
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        height: 0,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star_half_rounded,
                          color: Colors.amberAccent.shade700,
                        ),
                        Text(HumanFormats.number(serie.voteAverage),
                            style: textStyle.bodyMedium?.copyWith(
                                color: Colors.amberAccent.shade400,
                                fontWeight: FontWeight.bold)),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
