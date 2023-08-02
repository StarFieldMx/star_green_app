import 'package:flutter/material.dart';
import 'package:star_green_app/models/popular_now.dart';
import 'package:star_green_app/utils/date_formatted.dart';
import 'package:star_green_app/views/auth/events/widgets/popular_card.dart';
import 'package:star_green_app/widgets/carousel.dart';

class PopularNowCarousel extends StatelessWidget {
  const PopularNowCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final constraints =
        BoxConstraints(maxHeight: height * 0.35, maxWidth: double.infinity);
    return Carousel(
      constraints: constraints,
      itemBuilder: (BuildContext context, int index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: PopularCard(
          constraints: constraints,
          popularNow: PopularNow(
              title: 'siuuuuu',
              image:
                  'https://img.freepik.com/premium-photo/sunrise-mountains-lake-illustration_725906-104.jpg',
              dateFormatted:
                  formatEpochDate(DateTime.now().millisecondsSinceEpoch),
              description: 'chales',
              org: 'stargreen testing'),
        ),
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
