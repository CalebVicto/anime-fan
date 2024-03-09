import 'package:flutter/material.dart';

class RouteProvider extends ChangeNotifier {
  int _currentRoute = 0;

  int get currentRoute => _currentRoute;

  void updateRoute(int route) {
    _currentRoute = route;
    notifyListeners();
  }
}
