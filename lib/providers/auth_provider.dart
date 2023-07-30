import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  UserCredential? credentials;
  bool isAnonymous = false;
  User? _user;

  User? get user => _user;

  void authUser(User? user) {
    _user = user;
    notifyListeners();
  }

  void saveCredentials(UserCredential userCd) {
    credentials = userCd;
    isAnonymous = userCd.user?.isAnonymous ?? false;
    notifyListeners();
  }

  void logout() {
    _user = null;
  }
}
