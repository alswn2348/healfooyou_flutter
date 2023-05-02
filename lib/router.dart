import 'package:go_router/go_router.dart';
import 'package:healfooyou_flutter/authentication/login_screen.dart';

final router = GoRouter(
  initialLocation: "/login",
  routes: [
    GoRoute(
      name: LoginScreen.routeName,
      path: LoginScreen.routeURL,
      builder: (context, state) => const LoginScreen(),
    ),
  ],
);
