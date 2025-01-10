
import 'package:go_router/go_router.dart';
import 'package:seriesradar_app/presentation/screens/seasons/season_screen.dart';
import 'package:seriesradar_app/presentation/screens/series/home_screen.dart';
import 'package:seriesradar_app/presentation/screens/series/serie_screen.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: '/serie/:id',
            builder: (context, state) {
              final serieId = state.pathParameters['id'] ?? 'no-id';

              return SerieScreen(serieId: serieId);
            }
          ),
          GoRoute(
            path: '/season/:id',
            builder: (context, state) {
              final seasonId = state.pathParameters['id'] ?? 'no-id';

              return SeasonScreen(seasonId: seasonId);
            }
          ),
        ]
      ),

      
    ],
  );
}