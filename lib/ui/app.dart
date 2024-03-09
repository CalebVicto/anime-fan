import 'package:anime_fan/ui/components/BottomNavigationBar/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

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
      body: Center(
        child: Text('Hello World!'),
      ),
    );
  }
}
