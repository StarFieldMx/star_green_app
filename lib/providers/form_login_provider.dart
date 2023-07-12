import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:star_green_app/providers/fake_data.dart';

class FormSignInProvider extends ChangeNotifier {
  final Database database = Database();
  bool _isObscured = true;
  IconData _eye = MdiIcons.eyeOff;
  String _email = '';
  String _password = '';
  String _user = '';
  String _confirmPw = '';
  GlobalKey<FormState> formKeySignIn = GlobalKey<FormState>();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
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

  void signIn(BuildContext context) {
    bool isRegister = false;
    for (var user in database.users) {
      if (user.email == email && user.password == password) {
        isRegister = true;
      }
    }
    if (isRegister) {
      Navigator.pushNamed(context, 'home');
    }
    isValidForm() {
      return formKey.currentState!.validate();
    }

    // SIGNUP
    void signUp() {
      if (!isValidForm()) return;
    }
  }
}
