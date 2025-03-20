import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seriesradar_app/presentation/screens/seasons/season_screen.dart';
import 'package:seriesradar_app/presentation/screens/series/home_screen.dart';
import 'package:seriesradar_app/presentation/screens/series/serie_screen.dart';
import 'package:seriesradar_app/presentation/views/home_views/platforms_view.dart';
import 'package:seriesradar_app/presentation/views/views.dart';

class AppRouter {
  static final GlobalKey<NavigatorState> _homeNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> _favoritesNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> _platformsNavigatorKey =
      GlobalKey<NavigatorState>();

  final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (BuildContext context, GoRouterState state,
            StatefulNavigationShell navigationShell) {
          return HomeScreen(navigationShell: navigationShell);
        },
        branches: [
          // Rama Home
          StatefulShellBranch(
            navigatorKey: _homeNavigatorKey,
            routes: [
              GoRoute(
                path: '/', // Ruta base de esta rama
                builder: (context, state) => const HomeView(),
              ),
            ],
          ),

          // Rama Favoritos
          StatefulShellBranch(
            navigatorKey: _favoritesNavigatorKey,
            routes: [
              GoRoute(
                path: '/favorites',
                builder: (context, state) => const FavoritesView(),
              ),
            ],
          ),

          // Rama Plataformas
          StatefulShellBranch(
            navigatorKey: _platformsNavigatorKey,
            routes: [
              GoRoute(
                path: '/platforms',
                builder: (context, state) => const PlatformsView(),
              ),
            ],
          ),
        ],
      ),

      // Rutas fuera de la navegación principal
      GoRoute(
        path: '/serie/:id',
        builder: (context, state) {
          final serieId = state.pathParameters['id'] ?? 'no-id';
          return SerieScreen(serieId: serieId);
        },
      ),
      GoRoute(
        path: '/series/:id/season/:seasonNumber',
        builder: (context, state) {
          final seriesId = int.parse(state.pathParameters['id'] ?? '0');
          final seasonNumber =
              int.parse(state.pathParameters['seasonNumber'] ?? '0');
          return SeasonScreen(
            serieId: seriesId,
            seasonNumber: seasonNumber,
          );
        },
      ),
    ],
  );
}
