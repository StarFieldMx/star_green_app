import 'package:star_green_app/views/views.dart';

class StarGreenRoutes {
  static mapRoutes() => {
        'loading': (_) => LoadingScreen(),
        'home': (_) => HomeScreen(),
        'sign_in': (_) => SignInScreen(),
        'sign_up': (_) => SignUpScreen(),
        'user_org': (_) => UserOrganizationScreen(),
      };
  static initialRoute() => 'sign_in';
}
