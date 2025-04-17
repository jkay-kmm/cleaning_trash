import 'package:cleaning_trash/presentation/splash/splash.dart';
import 'package:cleaning_trash/presentation/welcome/welcome.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Splash(),
    ),
    GoRoute(
      path: '/welcome',
      builder: (context, state) => const Welcome(),
    ),
  ],
);
