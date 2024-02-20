import 'package:go_router/go_router.dart';
import 'package:widget_app/presentation/screens/Screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
        name: HomeScreen.name),
    GoRoute(
        path: '/buttons',
        builder: (context, state) => const ButtonsScreen(),
        name: ButtonsScreen.name),
    GoRoute(
        path: '/cards',
        builder: (context, state) => const CardsScreen(),
        name: CardsScreen.name),
    GoRoute(
        path: '/progress',
        builder: (context, state) => const ProgressScreen(),
        name: ProgressScreen.name),
    GoRoute(
      path: '/snackbars',
      name: SnackBarScreen.name,
      builder: (context, state) => const SnackBarScreen(),
    ),
    GoRoute(
      path: '/animated',
      name: AnimatedScreen.name,
      builder: (context, state) => const AnimatedScreen(),
    ),
    GoRoute(
      path: '/ui-controls',
      name: UIControlsScreen.name,
      builder: (context, state) => const UIControlsScreen(),
    ),
    GoRoute(
      path: '/tutorial',
      name: AppTutorialScreen.name,
      builder: (context, state) => const AppTutorialScreen(),
    ),
    GoRoute(
      path: '/infinity',
      name: InfiniteScrollScreen.name,
      builder: (context, state) => const InfiniteScrollScreen(),
    ),
  ],
);
