import 'package:auto_route/auto_route.dart';
import 'package:star_green_app/src/config/routes/auto_router_stargreen.gr.dart';
import 'package:star_green_app/src/config/routes/guards/auth_guard.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: AuthLayout.page,
          path: '/',
          guards: [AuthGuard()],
        ),
        AutoRoute(page: SearchRoute.page, path: 'search_bar'),
        AutoRoute(page: SignInRoute.page, path: '/sign_in'),
        AutoRoute(page: SignUpRoute.page, path: '/sign_up'),
      ];
}