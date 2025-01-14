import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seriesradar_app/presentation/providers/season/season_info_provider.dart';


class SeasonScreen extends ConsumerStatefulWidget {
  final int serieId;  // Recibido como parámetro
  final int seasonNumber;  // Recibido como parámetro

  const SeasonScreen({super.key, required this.serieId, required this.seasonNumber});

  @override
  SeasonScreenState createState() => SeasonScreenState();
}

class SeasonScreenState extends ConsumerState<SeasonScreen> {

  @override
  void initState() {
    super.initState();
    ref.read(seasonInfoProvider.notifier).loadSeason(widget.serieId, widget.seasonNumber);
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('id serie : ${widget.serieId},  temporada : ${widget.seasonNumber}' )
    );
  }
}