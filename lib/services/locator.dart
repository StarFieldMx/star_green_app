import 'package:get_it/get_it.dart';
import 'package:star_green_app/services/auth_services.dart';

final locator = GetIt.I;

void setupGetIt() {
  locator.registerLazySingleton<AuthServices>(() => AuthServices());
}
