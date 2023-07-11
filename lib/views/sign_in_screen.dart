import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_green_app/providers/form_login_provider.dart';
import 'package:star_green_app/styles/styles.dart';
import 'package:star_green_app/widgets/widgets.dart';

@RoutePage()
class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formProvider = Provider.of<FormSignInProvider>(context);
    return Scaffold(
      backgroundColor: StarGreenColors.green,
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 90),
            const StarGreenLogo(
              width: 208,
            ),
            const SizedBox(height: 25),
            Text(
              'StarGreen',
              style: StarGreenTextStyle.titleLoadStyle(),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            lemaStarGreen(size: 22),
            const SizedBox(height: 20),
            const FormSign(),
            const SizedBox(height: 40),
            SignInButton(
              // TODO: Change this later with auth form
              onPressed: () {
                context.router.pushNamed('/home');
              },
            ),
            const SizedBox(height: 40),
            HasnotAccount(
              onPressed: () => context.router.pushNamed('/sign_up'),
            ),
            // const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
