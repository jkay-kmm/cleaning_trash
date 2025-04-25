
import 'package:cleaning_trash/presentation/home/home.dart';
import 'package:cleaning_trash/presentation/home/widgets/category_home.dart';
import 'package:cleaning_trash/presentation/login/login.dart';
import 'package:cleaning_trash/presentation/about_us/about_us.dart';
import 'package:cleaning_trash/presentation/condition/condition.dart';
import 'package:cleaning_trash/presentation/privacy_policy/privacy_policy.dart';
import 'package:cleaning_trash/presentation/profile/profile.dart';
import 'package:cleaning_trash/presentation/profile_setting/profile_setting.dart';
import 'package:cleaning_trash/presentation/profile/security_setting.dart';
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
    GoRoute(
      path: '/about_us',
      builder: (context, state) =>  AboutUs(),
    ),
    GoRoute(
      path: '/condition',
      builder: (context, state) =>  Condition(),
    ),
    GoRoute(
      path: '/privacy_policy',
      builder: (context, state) => PrivacyPolicy(),
    ),
    GoRoute(
      path: '/profile_setting',
      builder: (context, state) =>  ProfileSetting(),
    ),
    GoRoute(
      path: '/security_setting',
      builder: (context, state) => const SecuritySetting(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const Profile(),
    ),

  ],
);
