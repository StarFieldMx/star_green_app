import 'package:auto_route/auto_route.dart';
import 'package:star_green_app/routes/auto_router_stargreen.gr.dart';
import 'package:star_green_app/routes/guards/auth.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: AuthLayout.page, path: '/', guards: [
          AuthGuard()
        ], children: [
          AutoRoute(page: HomeRoute.page, path: ''),
          AutoRoute(page: EventRoute.page, path: 'events'),
          AutoRoute(page: MapRoute.page, path: 'map'),
        ]),
        AutoRoute(page: SignInRoute.page, path: '/sign_in'),
        AutoRoute(page: SignUpRoute.page, path: '/sign_up'),
      ];
}
