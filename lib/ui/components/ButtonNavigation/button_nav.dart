import 'package:anime_fan/ui/class/class.route_buttom.dart';
import 'package:flutter/material.dart';

class ButtonNav extends StatelessWidget {
  final RouteButton routeButton;
  final void Function() onPress;

  const ButtonNav({
    super.key,
    required this.routeButton,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          TextButton(
            onPressed: onPress,
            style: TextButton.styleFrom(
              backgroundColor: routeButton.activeButton
                  ? const Color.fromARGB(255, 0, 65, 155)
                  : Colors.transparent,
            ),
            child: Icon(routeButton.iconButton),
          ),
          Text(
            routeButton.textButton,
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
            ),
          )
        ],
      ),
    );
  }
}
