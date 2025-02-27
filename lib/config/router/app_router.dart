import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seriesradar_app/presentation/screens/seasons/season_screen.dart';
import 'package:seriesradar_app/presentation/screens/series/home_screen.dart';
import 'package:seriesradar_app/presentation/screens/series/serie_screen.dart';
import 'package:seriesradar_app/presentation/views/views.dart';

class AppRouter {
  static final GlobalKey<NavigatorState> _sectionANavigatorKey =
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
            StatefulShellBranch(
              navigatorKey: _sectionANavigatorKey,
              routes: [
                GoRoute(
                  path: '/',
                  builder: (BuildContext context, GoRouterState state) =>
                      const HomeView(),
                ),
                GoRoute(
                  path: '/favorites',
                  builder: (context, state) {
                    return const FavoritesView();
                  },
                )
              ],
            ),
          ]),

      GoRoute(
          path: '/serie/:id',
          builder: (context, state) {
            final serieId = state.pathParameters['id'] ?? 'no-id';

            return SerieScreen(serieId: serieId);
          }),
      GoRoute(
        path: '/series/:id/season/:seasonNumber',
        builder: (context, state) {
          final seriesId = int.parse(state.pathParameters['id'] ?? 'no-id');
          final seasonNumber = int.parse(
              state.pathParameters['seasonNumber'] ?? 'no-seasonNumber');
          return SeasonScreen(
            serieId: seriesId,
            seasonNumber: seasonNumber,
          );
        },
      ),

      // GoRoute(
      //     path: '/',
      //     builder: (context, state) => const HomeScreen(
      //           navigationShell: HomeView(),
      //         ),
      //     routes: [
      //       GoRoute(
      //           path: '/serie/:id',
      //           builder: (context, state) {
      //             final serieId = state.pathParameters['id'] ?? 'no-id';

      //             return SerieScreen(serieId: serieId);
      //           }),
      //       GoRoute(
      //         path: '/series/:id/season/:seasonNumber',
      //         builder: (context, state) {
      //           final seriesId =
      //               int.parse(state.pathParameters['id'] ?? 'no-id');
      //           final seasonNumber = int.parse(
      //               state.pathParameters['seasonNumber'] ?? 'no-seasonNumber');
      //           return SeasonScreen(
      //             serieId: seriesId,
      //             seasonNumber: seasonNumber,
      //           );
      //         },
      //       ),
      //     ]),
    ],
  );
}
