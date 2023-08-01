import 'package:flutter/material.dart';
import 'package:star_green_app/views/auth/events/widgets/popular_card.dart';
import 'package:star_green_app/widgets/carousel.dart';

class PopularNowCarousel extends StatelessWidget {
  const PopularNowCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Carousel(
      constraints:
          BoxConstraints(maxHeight: height * 0.35, maxWidth: double.infinity),
      itemBuilder: (BuildContext context, int index) => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: PopularCard(),
      ),
      list: colors,
    );
  }
}

final List<Color> colors = [
  Colors.red,
  Colors.blueAccent,
  Colors.purpleAccent,
  Colors.deepPurpleAccent
];
