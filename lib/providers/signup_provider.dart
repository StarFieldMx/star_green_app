import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:star_green_app/providers/fake_data.dart';

class SignUpProvider extends ChangeNotifier {
  final Database database = Database();
  bool _isObscured = true;
  IconData _eye = MdiIcons.eyeOff;
  String _email = '';
  String _password = '';
  String _user = '';
  String _confirmPw = '';
  GlobalKey<FormState> formKeySignUp = GlobalKey<FormState>();
  // GETTERS
  IconData get eye => _eye;
  bool get isObscured => _isObscured;
  String get email => _email;
  String get password => _password;
  String get user => _user;
  String get confirmPw => _confirmPw;
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

  set confirmPw(String value) {
    _confirmPw = value;
    notifyListeners();
  }

  set user(String value) {
    _user = value;
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

  isValidForm() {
    return formKeySignUp.currentState!.validate();
  }

  // SIGNUP
  void signUp() {
    if (!isValidForm()) return;
  }
}
