import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:star_green_app/routes/auto_router_stargreen.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    // the navigation is paused until resolver.next() is called with either
    // true to resume/continue navigation or false to abort navigation
    // TODO: Cambiar el auth con el de Firebase <3
    FirebaseAuth.instance.authStateChanges().listen(
      (user) {
        if (user != null && !resolver.isResolved) {
          resolver.next(true);
        } else {
          resolver.redirect(const SignInRoute());
        }
      },
    );
  }
}
