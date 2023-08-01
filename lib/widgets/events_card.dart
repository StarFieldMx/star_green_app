import 'package:flutter/material.dart';
import 'package:star_green_app/styles/star_green_colors.dart';

// TODO 1: Better Details and be reusable
class EventsCard extends StatelessWidget {
  const EventsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: StarGreenColors.greenOriginal,
      child: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            'Rescatando tapas',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 30),
          Image.network(
            'https://compost-on.com/wp-content/uploads/2019/06/Reforestaci%C3%B3n-Urbana-2019-Morelia-Semaccdet-Compost-On.jpg',
            width: size.width * 0.8,
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 10,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    clipBehavior: Clip.hardEdge,
                    child: Image.network(
                      'https://compost-on.com/wp-content/uploads/2019/06/Reforestaci%C3%B3n-Urbana-2019-Morelia-Semaccdet-Compost-On.jpg',
                      width: size.width * 0.15,
                      height: size.width * 0.15,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Spacer(flex: 1),
                Flexible(
                  flex: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'GREENPEACE',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(fontSize: 18),
                      ),
                      const Text('110,125 seguidores')
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
