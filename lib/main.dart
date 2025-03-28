import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seriesradar_app/config/theme/app_theme.dart';
import 'package:seriesradar_app/config/router/app_router.dart';

// Solución para desactivar la verificación de certificados (solo en desarrollo)
class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    final client = super.createHttpClient(context);
    // Desactivar la verificación de certificados SSL
    client.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
    return client;
  }
}

Future main() async {
  // Habilitar la desactivación de la verificación de certificados en desarrollo
  HttpOverrides.global = MyHttpOverrides();

  await dotenv.load(fileName: '.env');

  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(goRouterProvider);
    return MaterialApp.router(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.trackpad,
        },
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      theme: AppTheme().getLightTheme(),
    );
  }
}
