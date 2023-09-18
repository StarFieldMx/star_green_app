import 'package:form_field_validator/form_field_validator.dart';
import 'package:star_green_app/src/utils/constants.dart';

final passwordValidator = MultiValidator([
  RequiredValidator(errorText: dangerAlerts[3]),
  MinLengthValidator(8, errorText: dangerAlerts[4]),
  PatternValidator(r'(?=.*?[#?!@$%^&*-])', errorText: dangerAlerts[5]),
  PatternValidator(r'(?=.*?[1234567890])', errorText: dangerAlerts[5])
]);

final emailValidator = MultiValidator([
  EmailValidator(errorText: dangerAlerts[1]),
  RequiredValidator(errorText: dangerAlerts[2])
]);
