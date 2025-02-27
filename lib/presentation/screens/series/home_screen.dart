import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seriesradar_app/shared/widgets/custom_bottom_navigationbar.dart';

class HomeScreen extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const HomeScreen({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    final String location = GoRouterState.of(context).matchedLocation;
    final bool showBottomNav = location == '/' || location == '/favorites';

    return Scaffold(
      body: navigationShell,
      bottomNavigationBar:
          showBottomNav ? const CustomBottomNavigationbar() : null,
    );
  }
}
