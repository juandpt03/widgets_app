import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

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
        GoRoute(
          name: ProgressScreen.route,
          path: 'progress',
          builder: (BuildContext context, GoRouterState state) =>
              const ProgressScreen(),
        ),
        GoRoute(
          name: SnackbarScreen.route,
          path: 'snackbars',
          builder: (BuildContext context, GoRouterState state) =>
              const SnackbarScreen(),
        ),
        GoRoute(
          name: AnimatedScreen.route,
          path: 'animated',
          builder: (BuildContext context, GoRouterState state) =>
              const AnimatedScreen(),
        ),
        GoRoute(
          name: UiControlsScreen.route,
          path: 'ui_controls',
          builder: (BuildContext context, GoRouterState state) =>
              const UiControlsScreen(),
        ),
        GoRoute(
          name: AppTutorialScreen.route,
          path: 'tutorial',
          builder: (BuildContext context, GoRouterState state) =>
              const AppTutorialScreen(),
        ),
        GoRoute(
          name: InfiniteScrollScreen.route,
          path: 'infinite',
          builder: (BuildContext context, GoRouterState state) =>
              const InfiniteScrollScreen(),
        ),
      ],
    ),
  ],
);
