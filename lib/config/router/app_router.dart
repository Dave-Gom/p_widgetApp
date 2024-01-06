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
  ],
);
