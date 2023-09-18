import 'package:flutter/material.dart';
// Widgets
import 'package:star_green_app/widgets/logo.dart';

class StarGreenSliverAppbar extends StatelessWidget {
  const StarGreenSliverAppbar({
    super.key,
    this.autoLeading = true,
  });
  final bool autoLeading;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SliverAppBar(
      // Forma de la appbar
      automaticallyImplyLeading: autoLeading,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20.0),
        bottomRight: Radius.circular(20.0),
      )),
      expandedHeight: 200.0,
      collapsedHeight: size.height * 0.115,
      toolbarHeight: size.height * 0.115,
      pinned: true, // Fija la AppBar en la parte superior
      flexibleSpace: Stack(
        children: <Widget>[
          // Contenido personalizado de la AppBar
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: SizedBox(
              height: 50.0,
              child: Center(
                child: Text('StarGreen',
                    style: Theme.of(context).textTheme.bodyLarge),
              ),
            ),
          ),
          const Positioned(
            bottom: 100,
            left: 0,
            right: 0,
            child: Center(
                child: StarGreenLogo(
              width: 80,
            )),
          )
        ],
      ),
    );
  }
}
