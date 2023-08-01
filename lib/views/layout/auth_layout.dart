// Packages
import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// Utils
import 'package:star_green_app/providers/auth_provider.dart';
import 'package:star_green_app/styles/star_green_colors.dart';
// Widgets
import 'package:star_green_app/widgets/bottom_navigate_bar.dart';
// Views
import 'package:star_green_app/views/auth/auth_views.dart';

@RoutePage()
class AuthLayout extends StatefulWidget {
  const AuthLayout({super.key, this.isRegister = false});
  final bool isRegister;

  @override
  State<AuthLayout> createState() => _AuthLayoutState();
}

class _AuthLayoutState extends State<AuthLayout> {
  int selectedIndex = 1;

  void changePage(int value) {
    setState(() {
      selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isRegister) {
      Provider.of<AuthProvider>(context, listen: false).updateUsername();
    }
    return SafeArea(
      child: Scaffold(
        backgroundColor: StarGreenColors.white,
        body: IndexedStack(
          index: selectedIndex,
          children: const [HomeScreen(), ExploreScreen(), MapScreen()],
        ),
        bottomNavigationBar:
            BottomNavigateBar(onTap: changePage, currentIndex: selectedIndex),
        floatingActionButton: ElevatedButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
            },
            child: const Text('Cerrar sesión')),
      ),
    );
  }
}
