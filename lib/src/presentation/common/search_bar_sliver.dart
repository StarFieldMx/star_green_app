import 'package:flutter/material.dart';

class SearchBarSliver extends StatelessWidget {
  const SearchBarSliver(
      {super.key, this.isSecondaryScreen = false, this.onTap});
  final bool isSecondaryScreen;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    isSecondaryScreen ? FocusManager.instance.primaryFocus?.unfocus() : null;
    return SliverAppBar(
      toolbarHeight: size.height * 0.1,
      pinned: true,
      flexibleSpace: SizedBox(
        height: 200,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: size.height * 0.015, vertical: size.width * 0.02),
          child: Center(
            child: TextField(
              onTap: onTap,
              cursorColor: Colors.white,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Encuentra los próximos eventos',
                prefixIcon:
                    const Icon(Icons.search, color: Colors.white, size: 25),
                enabledBorder: _borderSearchBar(color: Colors.white),
                focusedBorder: _borderSearchBar(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder _borderSearchBar({required Color color}) {
    return OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        gapPadding: 12,
        borderSide: BorderSide(color: color, width: 2));
  }
}
