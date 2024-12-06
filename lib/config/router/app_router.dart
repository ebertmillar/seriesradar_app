
import 'package:go_router/go_router.dart';
import 'package:seriesradar_app/presentation/screens/series/home_screen.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}