// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:anime_fan/ui/components/BottomNavigationBar/bottom_nav_bar.dart';
import 'package:anime_fan/config/color_scheme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Anime Fan",
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: colorSchemeDark(),
      ),
      home: Scaffold(
        bottomNavigationBar: CustomBottomAppBar(),
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
