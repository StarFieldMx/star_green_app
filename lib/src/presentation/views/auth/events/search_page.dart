import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:star_green_app/src/presentation/common/search_bar_sliver.dart';

@RoutePage()
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [SearchBarSliver(isSecondaryScreen: true)],
    );
  }
}
