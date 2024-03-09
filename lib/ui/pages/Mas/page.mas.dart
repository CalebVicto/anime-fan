import 'package:flutter/material.dart';

class PageMas extends StatefulWidget {
  const PageMas({super.key});

  @override
  State<PageMas> createState() => _PageMasState();
}

class _PageMasState extends State<PageMas> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Mas Page'),
      ),
    );
  }
}
