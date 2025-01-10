import 'package:flutter/material.dart';


class SeasonScreen extends StatelessWidget {
  final String seasonId;
  const SeasonScreen({super.key, required this.seasonId});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('ID temporada : $seasonId'  )
    );
  }
}