import 'package:go_router/go_router.dart';
import 'package:healfooyou_flutter/authentication/login_screen.dart';
import 'package:healfooyou_flutter/authentication/sign_up_screen.dart';
import 'package:healfooyou_flutter/common/main_navigation/navigator.dart';
import 'package:healfooyou_flutter/survey/interests_screen.dart';

final router = GoRouter(
  initialLocation: "/home",
  routes: [
    GoRoute(
      name: LoginScreen.routeName,
      path: LoginScreen.routeURL,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      name: SignUpScreen.routeName,
      path: SignUpScreen.routeURL,
      builder: (context, state) => const SignUpScreen(),
    ),
    GoRoute(
      name: Navigator.routeName,
      path: Navigator.routeURL,
      builder: (context, state) => const Navigator(),
    ),
    GoRoute(
      name: InterestsScreen.routeName,
      path: InterestsScreen.routeURL,
      builder: (context, state) => const InterestsScreen(),
    ),
  ],
);
