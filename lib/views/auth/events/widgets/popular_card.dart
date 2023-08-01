import 'package:flutter/material.dart';
import 'package:star_green_app/styles/star_green_colors.dart';

class PopularCard extends StatelessWidget {
  const PopularCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
      clipBehavior: Clip.antiAlias,
      color: StarGreenColors.greenOriginal,
      elevation: 1.5,
      shape: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(color: Colors.transparent, width: 0),
      ),
      child: SizedBox(
        width: size.width * 0.55,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: NetworkImage(
                  'https://images.pexels.com/photos/976866/pexels-photo-976866.jpeg?cs=srgb&dl=pexels-josh-sorenson-976866.jpg&fm=jpg'),
              width: double.infinity,
              height: 120,
              fit: BoxFit.cover,
            ),
            _DateAndHour(
              date: 'FRI, JUL 17, 20:30',
            ),
          ],
        ),
      ),
    );
  }
}

class _DateAndHour extends StatelessWidget {
  const _DateAndHour({super.key, required this.date});
  final String date;

  @override
  Widget build(BuildContext context) {
    return Text(
      date,
      style: TextStyle(
        fontSize: 22,
        color: StarGreenColors.lightGreen,
      ),
    );
  }
}
