import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seriesradar_app/domain/entities/serie_details.dart';

class SeriePosterLink extends StatelessWidget {
  final SerieDetails serie;

  const SeriePosterLink({super.key, required this.serie});

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      child: GestureDetector(
        onTap: () => context.push('/serie/${serie.id}'),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(serie.posterPath),
        ),
      ),
    );
  }
}
