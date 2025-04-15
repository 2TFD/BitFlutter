import 'package:go_router/go_router.dart';
import 'package:matule/cards/notification_card.dart';
import 'package:matule/forgot_pass.dart';
import 'package:matule/notification_screen.dart';
import 'package:matule/popular_screen.dart';
import 'package:matule/profile_screen.dart';
import 'package:matule/register_screen.dart';
import 'package:matule/routing/rootscreen.dart';
import 'package:matule/signin_screen.dart';
import 'package:matule/test_screen.dart';
import 'package:matule/verif_screen.dart';

class Routing {
  final router = GoRouter(
    initialLocation: '/',
    routes: [
      StatefulShellRoute.indexedStack(
        builder:
            (context, state, navigationShell) =>
                Rootscreen(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(path: '/', builder: (context, state) => TestScreen()),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/popular',
                builder: (context, state) => PopularScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/notification',
                builder: (context, state) => NotificationScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/profile',
                builder: (context, state) => ProfileScreen(),
              ),
            ],
          ),
        ],
      ),

      // no auth
      GoRoute(
        path: '/signin',
        builder: (context, state) => SigninScreen(),
        routes: [
          GoRoute(
            path: 'reg',
            builder: (context, state) => RegisterScreen(),
            routes: [
              GoRoute(
                path: 'forgot',
                builder: (context, state) => ForgotPass(),
                routes: [
                  GoRoute(
                    path: 'verif',
                    builder: (context, state) => VerifScreen(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
