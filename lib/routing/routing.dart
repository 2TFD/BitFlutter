
import 'package:go_router/go_router.dart';
import 'package:matule/forgot_pass.dart';
import 'package:matule/popular_screen.dart';
import 'package:matule/register_screen.dart';
import 'package:matule/routing/rootscreen.dart';
import 'package:matule/signin_screen.dart';
import 'package:matule/test_screen.dart';

// final router = GoRouter(
//   initialLocation: '/',
//   routes: <RouteBase>[
//     GoRoute(
//       path: '/',
//       builder: (context, state) => const SigninScreen(),
//       routes: [
//         GoRoute(
//           path: '/popular',
//           builder: (context, state) => PopularScreen()
//           )
//       ]
//     ),
//   ],
// );

final router = GoRouter(
  initialLocation: '/signin',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => Rootscreen(navigationShell: navigationShell,),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/',
              builder: (context, state) => PopularScreen()
            ),
          ]
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/popular',
              builder: (context, state) => PopularScreen(),
            ),
          ]
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/test',
              builder: (context, state) => ForgotPass(),
            ),
          ]
        ),
      ]
    ),

    // no auth
    GoRoute(
      path: '/signin', 
      builder:(context, state) => SigninScreen()
      ),
    GoRoute(
      path: '/reg',
      builder: (context, state) => RegisterScreen()
    ),
    GoRoute(
      path: '/forgot',
      builder: (context, state) => ForgotPass()
    )
  ], 
);