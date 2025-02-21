import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seriesradar_app/domain/entities/serie.dart';
import 'package:seriesradar_app/helpers/human_formats.dart';

typedef SearchSeriesCallback = Future<List<Serie>> Function(String query);

class SearchSerieDelgate extends SearchDelegate<Serie?> {
  final SearchSeriesCallback searchSeries;

  SearchSerieDelgate({required this.searchSeries});

  @override
  String? get searchFieldLabel => 'Buscar serie';

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      FadeIn(
        animate: query.isNotEmpty,
        duration: const Duration(milliseconds: 200),
        child: IconButton(
            onPressed: () => query = '', icon: const Icon(Icons.clear)),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () => close(context, null),
        icon: const Icon(Icons.arrow_back_ios_new_outlined));
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Text('BuildResults');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return FutureBuilder(
      future: searchSeries(query),
      builder: (context, snapshot) {
        final series = snapshot.data ?? [];
        return ListView.builder(
            itemCount: series.length,
            itemBuilder: (context, index) => _SerieItem(
              serie: series[index],
              onSerieSelected: close,
              ),              
            );
      },
    );
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
      onTap: (){
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
