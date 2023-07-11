import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:star_green_app/styles/styles.dart';
import 'package:star_green_app/widgets/widgets.dart';

@RoutePage()
class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: StarGreenColors.green,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            const Positioned(
              child: StarGreenLogo(),
              top: 120,
            ),
            Positioned(
              child: Text(
                'StarGreen',
                style: StarGreenTextStyle.titleLoadStyle(),
              ),
            ),
            Positioned(
              bottom: size.height * 0.30,
              child: Text(
                'Iniciando StarGreen...',
                style: StarGreenTextStyle.loadPageStyleInitStarGreen(),
              ),
            ),
            Positioned(
              bottom: size.height * 0.20,
              child: const LoadingWidget(),
            ),
            Positioned(
              bottom: 45,
              child: Row(
                children: const [
                  Text(
                    'StarGreen ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'by StarField',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
