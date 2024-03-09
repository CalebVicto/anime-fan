import 'package:flutter/material.dart';

class RouteButton {
  final IconData iconButton;
  final String textButton;
  final bool activeButton;
  final StatefulWidget routePage;

  RouteButton({
    required this.iconButton,
    required this.textButton,
    required this.activeButton,
    required this.routePage,
  });
}
