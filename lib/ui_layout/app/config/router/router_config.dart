import 'package:appsy/ui_layout/shared/wrappers/deferred_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:models/index.dart';

//all String Path
import 'package:appsy/ui_layout/pages/routes.dart' as routes;

//deferred pages
import 'package:appsy/ui_layout/pages/error_pages/not_found_page.dart'
    deferred as not_found_page;

import 'package:appsy/ui_layout/pages/error_pages/error_page.dart'
    deferred as error_page;
import 'package:appsy/ui_layout/pages/main_page/main_page.dart'
    deferred as main_page;

part 'transitions.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _sectionANavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'sectionANav');

final GoRouter router = GoRouter(
  debugLogDiagnostics: !MyConstApp.isProdMode,
  navigatorKey: _rootNavigatorKey,
  initialLocation: routes.root,
  errorBuilder: (BuildContext context, GoRouterState state) => DeferredWidget(
    not_found_page.loadLibrary,
    () => not_found_page.NotFoundPage(),
  ),
  // redirect: (context, state) {
  //   final authState = BlocProvider.of<AuthBloc>(context).state;
  //   debugPrint("redirect state.fullPath ${state.fullPath}");
  //   if (state.fullPath == null) return root_routes.root;
  //   return authState.whenOrNull(
  //     unauthenticated: (_, __) {
  //       final Set<String> pathsWithoutAuthorization = {
  //         auth_routes.auth,
  //         error_routes.error,
  //         error_routes.notFound,
  //         releases_routes.releases,
  //       };
  //       if (!pathsWithoutAuthorization.contains(state.fullPath)) {
  //         return auth_routes.auth;
  //       }
  //       return null;
  //     },
  //     authenticated: (_) {
  //       final Set<String> pathRedirectAuth = {
  //         auth_routes.auth,
  //         root_routes.root
  //       };
  //
  //       if (pathRedirectAuth.contains(state.fullPath!)) {
  //         return dashboard_routes.skills;
  //       }
  //       return null;
  //     },
  //   );
  // },
  routes: <RouteBase>[
    GoRoute(
      path: routes.root,
      pageBuilder: (context, state) {
        return NoTransitionPage(
          child: DeferredWidget(
            main_page.loadLibrary,
            () => main_page.MainPage(),
          ),
          key: state.pageKey,
        );
      },
      // routes: [],
    ),

    // ///__________   Страницы авторизации   __________///
    // GoRoute(
    //   path: auth_routes.auth, // auth_page.AuthPage.path,
    //   name: auth_routes.auth,
    //
    //   pageBuilder: (context, state) {
    //     return NoTransitionPage(
    //       child: DeferredWidget(
    //         auth_page.loadLibrary,
    //         () => auth_page.AuthPage(
    //             pathArea: state.uri.queryParameters['pathArea']),
    //       ),
    //       key: state.pageKey,
    //     );
    //   },
    // ),

    ///__________   Страницы Ошибок   __________///

    GoRoute(
      path: routes.notFound,
      builder: (context, state) => DeferredWidget(
          not_found_page.loadLibrary, () => not_found_page.NotFoundPage()),
    ),
    GoRoute(
      path: routes.error,
      builder: (context, state) => DeferredWidget(error_page.loadLibrary,
          () => error_page.ErrorPage(error: state.extra as ErrorModel)),
    ),
  ],
);
