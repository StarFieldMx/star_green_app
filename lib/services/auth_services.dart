import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  bool isAnonymous = false;
  User? user;
  String username = '';

  void saveUser(User value) {
    user = value;
    username = value.displayName ?? '';
  }

  void saveUsername(String value) {
    username = value;
  }

  void deleteData() {
    user = null;
    username = '';
  }
}
