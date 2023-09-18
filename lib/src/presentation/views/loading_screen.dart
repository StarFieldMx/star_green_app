import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:star_green_app/src/config/styles/styles.dart';
import 'package:star_green_app/src/presentation/common/common.dart';

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
          color: StarGreenColors.greenOriginal,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            const Positioned(
              top: 120,
              child: StarGreenLogo(),
            ),
            Positioned(
              child: Text(
                'StarGreen',
                style: StarGreenTextStyle.titleStarGreen(),
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
            const Positioned(
              bottom: 45,
              child: Row(
                children: [
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
