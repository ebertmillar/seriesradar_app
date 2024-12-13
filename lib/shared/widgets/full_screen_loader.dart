import 'package:flutter/material.dart';

class FullScreenLoader extends StatelessWidget {
  const FullScreenLoader({super.key});

  

  Stream<String> getLoadingMessages(){
    final messages = <String>[
      'Cargando series',
      'Cargando lista de series en transmisión',
      'Cargando series populares',
      'Cargando series mejor calificadas',
      'Ya casi esta listo',
      'Esto esta tardando mas de lo normal',
    ]; 

    return Stream.periodic(const Duration(milliseconds: 1200), (step) {
      return messages[step];
    }).take(messages.length);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Espere por favor'),
          const SizedBox(height: 10,),
          const CircularProgressIndicator( strokeWidth: 2,),
          const SizedBox(height: 10,),

          StreamBuilder(
            stream: getLoadingMessages(), 
            builder: (context, snapshot) {
              if( !snapshot.hasData ) return const Text('cargando..');
              return Text(snapshot.data!);
            },
          )
        ],
      ),

    );
  }
}