import 'package:flutter/material.dart';
import 'package:seriesradar_app/config/theme/app_theme.dart';
import 'package:seriesradar_app/config/router/app_router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getDarkTheme(), // Integra el tema oscuro
      routerConfig: AppRouter().router, // Integra el router
    );
  }
}
