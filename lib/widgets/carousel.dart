import 'package:flutter/material.dart';

/// Use contraints for avoid errors with unbounded height
class Carousel extends StatelessWidget {
  const Carousel(
      {super.key,
      required this.list,
      required this.itemBuilder,
      this.constraints});
  final List<dynamic> list;
  final Widget Function(BuildContext context, int index) itemBuilder;

  /// Use contraints for avoid errors with unbounded height or use a card or container
  final BoxConstraints? constraints;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: constraints ?? const BoxConstraints.expand(),
      child: ListView.builder(
        itemBuilder: itemBuilder,
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
