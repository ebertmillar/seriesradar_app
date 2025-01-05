import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seriesradar_app/domain/entities/serie.dart';
import 'package:seriesradar_app/helpers/human_formats.dart';

class SeriesHorizontalListview extends StatefulWidget {
  final List<Serie> series;
  final String? title;
  final String? subTitle;
  final VoidCallback? loadNextPage;

  const SeriesHorizontalListview(
      {super.key,
      required this.series,
      this.title,
      this.subTitle,
      this.loadNextPage});

  @override
  State<SeriesHorizontalListview> createState() => _SeriesHorizontalListviewState();
}

class _SeriesHorizontalListviewState extends State<SeriesHorizontalListview> {

  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener((){

      if(widget.loadNextPage == null) return;

      final pixels = scrollController.position.pixels + 200;
      final maxScrollExtent = scrollController.position.maxScrollExtent;

      if( pixels >= maxScrollExtent){
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
              itemCount: widget.series.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return FadeInRight(
                  child: _Slide(
                    serie: widget.series[index],
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
  final Serie serie;

  const _Slide({required this.serie});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleSmall;
    final voteAverageStyle = Theme.of(context).textTheme.bodySmall;
    final popularyStyle = Theme.of(context).textTheme;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Imagen && Avoted
          GestureDetector(
            onTap: () => context.push('/serie/${serie.id}'), // Navegación
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
                      //bottomLeft:Radius.circular(15)
                    ),
                    child: Image.network(
                      serie.posterPath!,
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
                        Colors.transparent.withOpacity(0.0), // Suave al inicio
                        Colors.black.withOpacity(0.2), // Oscuro en el centro
                        Colors.black
                            .withOpacity(1), // Muy oscuro cerca del título
                      ],
                      stops: const [0.0, 0.8, 1.0], // Control de transición
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                      //bottomLeft:Radius.circular(15)
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
                        color: Colors.amberAccent
                            .shade400, // Asegúrate que el icono sea visible sobre el gradiente
                      ),
                      Text('${serie.voteAverage}',
                          style: voteAverageStyle?.copyWith(
                              color: Colors.amberAccent.shade400,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 5),

          //Texto

          SizedBox(
            width: 150,
            child: Text(
              serie.name,
              maxLines: 2,
              style: titleStyle,
            ),
          ),

          const SizedBox(height: 5),

          //popularity
          SizedBox(
            width: 150,
            child: Row(
              children: [
                const Icon(Icons.thumb_up_outlined, color: Colors.black54,),
                const SizedBox(width: 5,),
                Text( HumanFormats.number(serie.popularity), style: popularyStyle.bodySmall?.copyWith(color: Colors.black54),),
              ],
            ),
          )


        ],
      ));
  }
}
