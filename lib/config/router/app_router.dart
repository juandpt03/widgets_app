import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      name: HomeScreen.route,
      path: '/',
      builder: (BuildContext context, GoRouterState state) =>
          const HomeScreen(),
      routes: <RouteBase>[
        GoRoute(
          name: ButtonsScreen.route,
          path: 'buttons',
          builder: (BuildContext context, GoRouterState state) =>
              const ButtonsScreen(),
        ),
        GoRoute(
          name: CardsScreen.route,
          path: 'cards',
          builder: (BuildContext context, GoRouterState state) =>
              const CardsScreen(),
        ),
      ],
    ),
  ],
);
