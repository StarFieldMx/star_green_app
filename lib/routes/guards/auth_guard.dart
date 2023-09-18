import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:star_green_app/routes/auto_router_stargreen.gr.dart';
import 'package:star_green_app/services/auth_services.dart';
import 'package:star_green_app/services/locator.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    // the navigation is paused until resolver.next() is called with either
    // true to resume/continue navigation or false to abort navigation
    FirebaseAuth.instance.authStateChanges().listen(
      (user) {
        if (user != null && !resolver.isResolved) {
          locator<AuthServices>().saveUser(user);
          resolver.next(true);
        } else {
          locator<AuthServices>().deleteData();
          router.replaceAll([const SignInRoute()]);
        }
      },
    );
  }
}
