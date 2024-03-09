import 'package:flutter/material.dart';

class PageHistorial extends StatefulWidget {
  const PageHistorial({super.key});

  @override
  State<PageHistorial> createState() => PageHistorialState();
}

class PageHistorialState extends State<PageHistorial> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('HistorialPageState'),
      ),
    );
  }
}
