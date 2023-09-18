import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:star_green_app/services/auth_services.dart';
import 'package:star_green_app/services/locator.dart';

class AuthProvider extends ChangeNotifier {
  User? user = locator.get<AuthServices>().user;
  void updateUsername() {
    String name = locator.get<AuthServices>().username;
    user!.updateDisplayName(name);
  }
}
