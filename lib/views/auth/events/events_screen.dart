import 'package:flutter/material.dart';
import 'package:star_green_app/widgets/events_card.dart';
import 'package:star_green_app/widgets/search_bar_sliver.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SearchBarSliver(),
        // TODO 3: Implement MapPreview and Add to events near
        // TODO 2: Create find events near
        SliverList.builder(
          itemCount: 10,
          itemBuilder: (_, index) {
            return const Padding(
              padding: EdgeInsets.all(8.0),
              // TODO 4: Implement backend
              child: EventsCard(),
            );
          },
        ),
      ],
    );
  }
}
