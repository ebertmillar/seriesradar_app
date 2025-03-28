import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seriesradar_app/features/serie/domain/entities/serie.dart';

class PlatformPosterLink extends StatelessWidget {
  final Serie serie;

  const PlatformPosterLink({super.key, required this.serie});

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      child: GestureDetector(
        onTap: () => context.push('/serie/${serie.id}'),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            serie.posterPath!, // Alto fijo para todas las imágenes
            height: 130,
            fit: BoxFit.cover, // Ajusta la imagen sin deformarla
          ),
        ),
      ),
    );
  }
}
