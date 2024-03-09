// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:anime_fan/providers/provider.router.dart';
import 'package:anime_fan/ui/app.dart';
import 'package:anime_fan/config/color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => RouteProvider()),
      ],
      child: const MainApp(),
    ),
  );
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
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => App(),
      //   // '/biblioteca': (context) => Biblioteca(),
      //   // '/actualizacion': (context) => Actualizacion(),
      //   // '/historial': (context) => Historial(),
      //   // '/explorar': (context) => Explorar(),
      //   // '/mas': (context) => Mas(),
      // },
      home: App(),
    );
  }
}
