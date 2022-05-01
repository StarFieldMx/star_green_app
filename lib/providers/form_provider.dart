import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class FormProvider extends ChangeNotifier {
  bool _isObscured = true;
  IconData _eye = MdiIcons.eyeOff;
  String _email = '';
  String _password = '';
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  // GETTERS
  IconData get eye => _eye;
  bool get isObscured => _isObscured;
  String get email => _email;
  String get password => _password;
  // SETTERS

  set eye(IconData icon) {
    _eye = icon;
    notifyListeners();
  }

  set isObscured(bool value) {
    _isObscured = value;
    notifyListeners();
  }

  set email(String value) {
    _email = value;
    notifyListeners();
  }

  set password(String value) {
    _password = value;
    notifyListeners();
  }

  // FUNCTIONS

  void tappedEye() {
    isObscured = !isObscured;
    if (isObscured == false) {
      eye = MdiIcons.eye;
    } else {
      eye = MdiIcons.eyeOff;
    }
    notifyListeners();
  }

  void signIn() {
    print('$email and $password');
  }
}
