import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:star_green_app/providers/providers.dart';
import 'package:star_green_app/routes/auto_router_stargreen.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    // the navigation is paused until resolver.next() is called with either
    // true to resume/continue navigation or false to abort navigation
    AuthProvider? authProvider;
    if (router.navigatorKey.currentContext != null) {
      authProvider = Provider.of<AuthProvider>(
          router.navigatorKey.currentContext!,
          listen: false);
    }

    FirebaseAuth.instance.authStateChanges().listen(
      (user) {
        if (user != null && !resolver.isResolved) {
          if (authProvider != null) {
            authProvider.authUser(user);
          }
          resolver.next(true);
        } else {
          if (authProvider != null) {
            authProvider.logout();
          }
          router.replaceAll([const SignInRoute()]);
        }
      },
    );
  }
}
