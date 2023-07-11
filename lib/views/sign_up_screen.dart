import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:star_green_app/styles/star_green_colors.dart';
import 'package:star_green_app/widgets/widgets.dart';

@RoutePage()
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: StarGreenColors.lowWhite,
        body: CustomScrollView(
          slivers: [
            const StarGreenSliverAppbar(),
            // SignUp
            SliverList(
                delegate: SliverChildListDelegate([
              Form(
                  child: Column(
                children: [
                  TextFormField(),
                  TextFormField(),
                  TextFormField(),
                  TextFormField(),
                  TextFormField(),
                ],
              ))
            ]))
          ],
        ),
      ),
    );
  }
}
