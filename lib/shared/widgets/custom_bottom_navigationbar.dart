import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavigationbar extends StatelessWidget {
  const CustomBottomNavigationbar({super.key});

  int getCurrentIndex(BuildContext context) {
    final String location = GoRouterState.of(context).matchedLocation;

    switch (location) {
      case '/':
        return 0;
      case '/favorites':
        return 1;
      case 'favorites':
        return 2;

      default:
        return 0;
    }
  }

  void onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go('/');
      case 1:
        context.go('/favorites');
      case 2:
        context.go('/favorites');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_max), label: 'Inicio'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favoritos'),
        BottomNavigationBarItem(icon: Icon(Icons.pending), label: 'Algo')
      ],
      elevation: 0,
      onTap: (value) => onItemTapped(context, value),
      currentIndex: getCurrentIndex(context),
    );
  }
}
