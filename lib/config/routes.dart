import 'package:anime_fan/ui/pages/Actualizacion/page.actualizacion.dart';
import 'package:anime_fan/ui/pages/Biblioteca/page.biblioteca.dart';
import 'package:anime_fan/ui/pages/Explorar/page.explorar.dart';
import 'package:anime_fan/ui/pages/Historial/page.historial.dart';
import 'package:anime_fan/ui/pages/Mas/page.mas.dart';
import 'package:flutter/material.dart';
import 'package:anime_fan/ui/class/class.route_buttom.dart';

List<RouteButton> listRoutes() => [
      RouteButton(
        iconButton: Icons.book_outlined,
        textButton: "Biblioteca",
        activeButton: false,
        routePage: const PageBiblioteca(),
      ),
      RouteButton(
        iconButton: Icons.info_outline,
        textButton: "Actualización",
        activeButton: false,
        routePage: const PageActualizacion(),
      ),
      RouteButton(
        iconButton: Icons.history,
        textButton: "Historial",
        activeButton: false,
        routePage: const PageHistorial(),
      ),
      RouteButton(
        iconButton: Icons.explore_outlined,
        textButton: "Explorar",
        activeButton: false,
        routePage: const PageExplorar(),
      ),
      RouteButton(
        iconButton: Icons.more_horiz,
        textButton: "Más",
        activeButton: false,
        routePage: const PageMas(),
      )
    ];
