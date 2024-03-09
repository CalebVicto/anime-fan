import 'package:anime_fan/config/routes.dart';
import 'package:anime_fan/ui/class/class.route_buttom.dart';
import 'package:anime_fan/ui/components/ButtonNavigation/button_nav.dart';
import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatefulWidget {
  const CustomBottomAppBar({
    super.key,
  });

  @override
  State<CustomBottomAppBar> createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  List<RouteButton> routes = listRoutes();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      color: Theme.of(context).colorScheme.tertiary,
      padding: const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 10),
      height: 95,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: routes.asMap().entries.map((entry) {
          final lIndex = entry.key;
          final RouteButton item = entry.value;
          return ButtonNav(
            routeButton: RouteButton(
              iconButton: item.iconButton,
              textButton: item.textButton,
              activeButton: lIndex == index ? true : false,
              routeButton: item.routeButton,
            ),
            onPress: () {
              index = lIndex;
              // Navigator.of(context).pushNamed(item.routeButton);
              setState(() {});
            },
          );
        }).toList(),
      ),
    );
  }
}
