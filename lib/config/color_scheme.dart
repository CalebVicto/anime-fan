import 'package:flutter/material.dart';

ColorScheme colorSchemeDark() {
  return ColorScheme.fromSeed(
    primary: Colors.white,
    background: Colors.black,
    tertiary: const Color.fromARGB(255, 15, 16, 21),
    // No Tocar
    seedColor: Color.fromARGB(0, 255, 255, 255),
    brightness: Brightness.dark,
  );
}

// Theme.of(context).colorScheme.onPrimary,