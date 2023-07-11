import 'package:auto_route/auto_route.dart';
import 'package:star_green_app/routes/auto_router_stargreen.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    // the navigation is paused until resolver.next() is called with either
    // true to resume/continue navigation or false to abort navigation
    // TODO: Cambiar el auth con el de Firebase <3
    final isAuth = resolver.routeName == '/home';
    if (isAuth) {
      // if user is authenticated we continue
      resolver.next(true);
    } else {
      // we redirect the user to our login page
      // tip: use resolver.redirect to have the redirected route
      // automatically removed from the stack when the resolver is completed
      resolver.redirect(const SignInRoute());
    }
  }
}
