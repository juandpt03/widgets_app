import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) =>
          const HomeScreen(),
      routes: <RouteBase>[
        GoRoute(
          path: 'buttons',
          builder: (BuildContext context, GoRouterState state) =>
              const ButtonsScreen(),
        ),
        GoRoute(
          path: 'cards',
          builder: (BuildContext context, GoRouterState state) =>
              const CardsScreen(),
        ),
      ],
    ),
  ],
);
