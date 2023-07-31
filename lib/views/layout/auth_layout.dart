import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_green_app/providers/auth_provider.dart';

@RoutePage()
class AuthLayout extends StatelessWidget {
  const AuthLayout({super.key, this.isRegister = false});
  final bool isRegister;

  @override
  Widget build(BuildContext context) {
    if (isRegister) {
      Provider.of<AuthProvider>(context, listen: false).updateUsername();
    }
    return const AutoRouter();
  }
}
