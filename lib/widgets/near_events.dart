import 'package:flutter/material.dart';
import 'package:star_green_app/widgets/anchor_button.dart';

import '../styles/star_green_colors.dart';

class NearEvents extends StatelessWidget {
  const NearEvents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Encontrar eventos cerca de: '),
            AnchorButton(
              onPressed: () {},
              title: 'Colima, MX',
              color: StarGreenColors.darkGreen,
            ),
          ],
        ),
        Container(
          width: screenWidth,
          margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
          height: screenHeight * 0.4,
          child: Column(
            children: [
              Container(
                width: screenWidth,
                height: screenHeight * 0.17,
                decoration: BoxDecoration(
                  color: StarGreenColors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 0.4,
                      offset: Offset(0.2, 0.3),
                    ),
                  ],
                ),
                // ignore: todo
                //TODO: add map widget
                child: const Text('Mapa'),
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      print('Tap Hoy');
                    },
                    child: Container(
                      width: screenWidth,
                      height: screenHeight * 0.05,
                      decoration: BoxDecoration(
                        color: StarGreenColors.greenButton,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                        border: Border.all(
                          color: StarGreenColors.grey,
                          width: 1.0
                        )
                      ),
                      child: Center(
                        child: Text(
                          'Hoy',
                          style: TextStyle(
                            color: StarGreenColors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Tap Esta semana');
                    },
                    child: Container(
                      width: screenWidth,
                      height: screenHeight * 0.05,
                      decoration: BoxDecoration(
                        color: StarGreenColors.greenButton,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                        border: Border.all(
                          color: StarGreenColors.grey,
                          width: 1.0
                        )
                      ),
                      child: Center(
                        child: Text(
                          'Esta semana',
                          style: TextStyle(
                            color: StarGreenColors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),               
                  GestureDetector(
                    onTap: () {
                      print('Tap Próximos');
                    },
                    child: Container(
                      width: screenWidth,
                      height: screenHeight * 0.05,
                      decoration: BoxDecoration(
                        color: StarGreenColors.greenButton,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                        border: Border.all(
                          color: StarGreenColors.grey,
                          width: 1.0
                        )
                      ),
                      child: Center(
                        child: Text(
                          'Próximos',
                          style: TextStyle(
                            color: StarGreenColors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),               
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
