import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {

    final titleAppBar = Theme.of(context).textTheme;

    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              const Icon(Icons.movie_creation),
              const SizedBox(width: 5,),
              Text('SeriesRadar', style: titleAppBar.titleMedium ),
              const Spacer(),
              IconButton(onPressed: (){}, icon: const Icon(Icons.search_outlined))
            ],
          ),
        ),
      )
    );
  }
}
