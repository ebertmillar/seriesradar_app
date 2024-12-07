import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seriesradar_app/config/theme/app_theme.dart';
import 'package:seriesradar_app/config/router/app_router.dart';

Future main() async {

  await dotenv.load(fileName: '.env');

  runApp(
    const ProviderScope(child:MainApp())
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter().router, 
      theme: AppTheme().getDarkTheme(),
    );
  }
}
