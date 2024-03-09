import 'package:flutter/material.dart';
import 'package:anime_fan/ui/class/class.route_buttom.dart';

List<RouteButton> listRoutes() => [
      RouteButton(
        iconButton: Icons.book_outlined,
        textButton: "Biblioteca",
        activeButton: false,
        routeButton: "biblioteca",
      ),
      RouteButton(
        iconButton: Icons.info_outline,
        textButton: "Actualización",
        activeButton: false,
        routeButton: "actualizacion",
      ),
      RouteButton(
        iconButton: Icons.history,
        textButton: "Historial",
        activeButton: false,
        routeButton: "historial",
      ),
      RouteButton(
        iconButton: Icons.explore_outlined,
        textButton: "Explorar",
        activeButton: false,
        routeButton: "explorar",
      ),
      RouteButton(
        iconButton: Icons.more_horiz,
        textButton: "Más",
        activeButton: false,
        routeButton: "mas",
      )
    ];
