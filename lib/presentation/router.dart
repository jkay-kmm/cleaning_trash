
import 'package:cleaning_trash/presentation/home/home.dart';
import 'package:cleaning_trash/presentation/home/widgets/category_home.dart';
import 'package:cleaning_trash/presentation/login/login.dart';
import 'package:cleaning_trash/presentation/register/register.dart';
import 'package:cleaning_trash/presentation/splash/splash.dart';
import 'package:cleaning_trash/presentation/welcome/welcome.dart';
import 'package:go_router/go_router.dart';

import 'category/category.dart';
import 'category/category_intro.dart';

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
    GoRoute(
      path: '/login',
      builder: (context, state) => const Login(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const Register(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/category_home',
      builder: (context, state) => const Category(),
    ),
    GoRoute(
      path: '/category_splash',
      builder: (context, state) => const CategoryIntro(),
    ),
  ],
);
