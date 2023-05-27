import 'package:star_green_app/views/views.dart';

class StarGreenRoutes {
  static mapRoutes() => {
        'loading': (_) => LoadingScreen(),
        'home': (_) => const HomeScreen(),
        'sign_in': (_) => const SignInScreen(),
        'sign_up': (_) => const SignUpScreen(),
      };
  static initialRoute() => 'home';
}
