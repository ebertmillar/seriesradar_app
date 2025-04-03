import 'package:go_router/go_router.dart';
import 'package:seriesradar_app/features/auth/presentation/providers/auth_provider.dart';
import 'package:seriesradar_app/features/serie/presentation/screens/seasons/season_screen.dart';
import 'package:seriesradar_app/features/serie/presentation/screens/series/home_screen.dart';
import 'package:seriesradar_app/features/serie/presentation/screens/series/serie_screen.dart';
import 'package:seriesradar_app/features/serie/presentation/views/home_views/platforms_view.dart';
import 'package:seriesradar_app/features/serie/presentation/views/views.dart';

// class AppRouter {
//   static final GlobalKey<NavigatorState> _homeNavigatorKey =
//       GlobalKey<NavigatorState>();
//   static final GlobalKey<NavigatorState> _favoritesNavigatorKey =
//       GlobalKey<NavigatorState>();
//   static final GlobalKey<NavigatorState> _platformsNavigatorKey =
//       GlobalKey<NavigatorState>();

//   final GoRouter router = GoRouter(
//     initialLocation: '/',
//     routes: [
//       StatefulShellRoute.indexedStack(
//         builder: (BuildContext context, GoRouterState state,
//             StatefulNavigationShell navigationShell) {
//           return HomeScreen(navigationShell: navigationShell);
//         },
//         branches: [
//           // Rama Home
//           StatefulShellBranch(
//             navigatorKey: _homeNavigatorKey,
//             routes: [
//               GoRoute(
//                 path: '/', // Ruta base de esta rama
//                 builder: (context, state) => const HomeView(),
//               ),
//             ],
//           ),

//           // Rama Favoritos
//           StatefulShellBranch(
//             navigatorKey: _favoritesNavigatorKey,
//             routes: [
//               GoRoute(
//                 path: '/favorites',
//                 builder: (context, state) => const FavoritesView(),
//               ),
//             ],
//           ),

//           // Rama Plataformas
//           StatefulShellBranch(
//             navigatorKey: _platformsNavigatorKey,
//             routes: [
//               GoRoute(
//                 path: '/platforms',
//                 builder: (context, state) => const PlatformsView(),
//               ),
//             ],
//           ),
//         ],
//       ),

//       // Rutas fuera de la navegación principal
//       GoRoute(
//         path: '/serie/:id',
//         builder: (context, state) {
//           final serieId = state.pathParameters['id'] ?? 'no-id';
//           return SerieScreen(serieId: serieId);
//         },
//       ),
//       GoRoute(
//         path: '/series/:id/season/:seasonNumber',
//         builder: (context, state) {
//           final seriesId = int.parse(state.pathParameters['id'] ?? '0');
//           final seasonNumber =
//               int.parse(state.pathParameters['seasonNumber'] ?? '0');
//           return SeasonScreen(
//             serieId: seriesId,
//             seasonNumber: seasonNumber,
//           );
//         },
//       ),
//     ],
//   );
// }
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seriesradar_app/config/router/app_router_notifier.dart';
import 'package:seriesradar_app/features/auth/presentation/screens/login_screen.dart';
import 'package:seriesradar_app/features/auth/presentation/screens/register_screen.dart';
import 'package:seriesradar_app/features/auth/presentation/screens/check_auth_status_screen.dart';

final goRouterProvider = Provider((ref) {
  final goRouterNotifier = ref.read(goRouterNotifierProvider);

  return GoRouter(
    initialLocation:
        '/splash', // Empieza verificando el estado de autenticación
    refreshListenable: goRouterNotifier,
    routes: [
      ///* Verificación de autenticación
      GoRoute(
        path: '/splash',
        builder: (context, state) => const CheckAuthStatusScreen(),
      ),

      ///* Rutas de autenticación
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/register',
        builder: (context, state) => const RegisterScreen(),
      ),

      ///* Navegación Principal con Bottom Navigation Bar
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return HomeScreen(navigationShell: navigationShell);
        },
        branches: [
          // Home
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/',
                builder: (context, state) => const HomeView(),
              ),
            ],
          ),

          // Favoritos
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/favorites',
                builder: (context, state) => const FavoritesView(),
              ),
            ],
          ),

          // Plataformas
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/platforms',
                builder: (context, state) => const PlatformsView(),
              ),
            ],
          ),
        ],
      ),

      ///* Rutas fuera de la navegación principal
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

    ///* Lógica de Redirección
    redirect: (context, state) {
      final authStatus = goRouterNotifier.authStatus;
      final isGoingTo = state.matchedLocation;

      if (isGoingTo == '/splash' && authStatus == AuthStatus.checking) {
        return null;
      }

      if (authStatus == AuthStatus.notAuthenticated) {
        if (isGoingTo == '/login' || isGoingTo == '/register') return null;
        return '/login';
      }

      if (authStatus == AuthStatus.authenticated) {
        if (isGoingTo == '/login' ||
            isGoingTo == '/register' ||
            isGoingTo == '/splash') {
          return '/';
        }
      }

      return null;
    },
  );
});
