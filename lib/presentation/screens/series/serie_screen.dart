import 'package:flutter/material.dart';

class SerieScreen extends StatelessWidget {
  
  final String serieId;

  const SerieScreen({super.key, required this.serieId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SerieID: $serieId'),
      ),
    );
    
  }
}