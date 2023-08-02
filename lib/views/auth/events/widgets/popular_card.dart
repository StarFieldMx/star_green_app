import 'package:flutter/material.dart';
import 'package:star_green_app/models/popular_now.dart';
import 'package:star_green_app/styles/star_green_colors.dart';

const double leftPadding = 8;

class PopularCard extends StatelessWidget {
  const PopularCard(
      {super.key, required this.constraints, required this.popularNow});
  final BoxConstraints constraints;
  final PopularNow popularNow;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
      clipBehavior: Clip.antiAlias,
      color: StarGreenColors.white,
      elevation: 1.5,
      shadowColor: Colors.black,
      shape: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(color: Colors.transparent, width: 0),
      ),
      child: Container(
        constraints: constraints,
        width: size.width * 0.55,
        child: Stack(
          fit: StackFit.loose,
          children: [
            Image(
              image: NetworkImage(
                  popularNow.image ?? 'www.placeholder.com/100x100'),
              width: double.infinity,
              height: 120,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 120,
              child: _EventDetails(
                dateAndHour: popularNow.dateFormatted,
                titleEvent: popularNow.title,
                description: popularNow.description,
              ),
            ),
            const Positioned(
              bottom: 20,
              right: leftPadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.favorite_outline_rounded),
                  SizedBox(width: 10),
                  Icon(Icons.ios_share_rounded, color: Colors.black),
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              left: leftPadding,
              width: size.width * 0.35,
              child: Text(popularNow.org,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodySmall),
            )
          ],
        ),
      ),
    );
  }
}

class _EventDetails extends StatelessWidget {
  const _EventDetails(
      {required this.titleEvent,
      required this.description,
      required this.dateAndHour});
  final String dateAndHour;
  final String titleEvent;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: leftPadding, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            dateAndHour,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: StarGreenColors.darkGreen, fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 2),
          Text(
            titleEvent,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 2),
          Text(
            description,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
