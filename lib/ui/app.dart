// ignore_for_file: prefer_const_constructors

import 'package:anime_fan/config/routes.dart';
import 'package:anime_fan/providers/provider.router.dart';
import 'package:anime_fan/ui/components/BottomNavigationBar/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomAppBar(),
      body: listRoutes()
          .toList()[context.watch<RouteProvider>().currentRoute]
          .routePage,
    );
  }
}
