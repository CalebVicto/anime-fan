// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class PageBiblioteca extends StatefulWidget {
  const PageBiblioteca({super.key});

  @override
  State<PageBiblioteca> createState() => _PageBibliotecaState();
}

class _PageBibliotecaState extends State<PageBiblioteca> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h1 = 26;
    double iconSize = 24;
    List categoria = [
      'Predeterminado',
      'Categoria 1',
      'Categoria 2',
      'Categoria 3',
      'Categoria 4',
      'Categoria 5',
    ];

    return Container(
      height: size.height,
      width: size.width,
      child: Column(
        children: [
          // Top Nav Bar
          Container(
            width: size.width,
            padding: EdgeInsets.only(left: 10, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Biblioteca",
                  style: TextStyle(
                    fontSize: h1,
                  ),
                ),
                Row(
                  children: [
                    // Buscar
                    IconButton(
                      icon: Icon(Icons.search),
                      iconSize: iconSize,
                      onPressed: () {},
                    ),
                    SizedBox(width: 5),

                    // Ordenar
                    IconButton(
                      icon: Icon(Icons.format_align_center),
                      iconSize: iconSize,
                      onPressed: () {},
                    ),
                    SizedBox(width: 5),

                    // Opciones
                    IconButton(
                      icon: Icon(Icons.more_vert_outlined),
                      iconSize: iconSize,
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
          ),

          // Contenido de la pagina: Categorias
          Container(
            width: size.width,
            height: 70,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categoria.length,
              itemBuilder: (context, index) {
                return ItemMenu(
                  active: _index == index,
                  title: categoria[index],
                  onTap: () {
                    _index = index;
                    setState(() {});
                  },
                );
              },
            ),
          ),

          // Contenido de la pagina: Lista de Mangas

          // ---------------
        ],
      ),
    );
  }
}

class ItemMenu extends StatelessWidget {
  final bool active;
  final String title;
  final void Function() onTap;

  const ItemMenu({
    super.key,
    required this.active,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 5, right: 5),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: active ? Colors.lightBlue.shade100 : Colors.transparent,
              width: 2.0,
            ),
          ),
        ),
        margin: EdgeInsets.only(top: 8.0, left: 10, right: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                color: active ? Colors.lightBlue.shade100 : Colors.white,
              ),
            ),
            SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}
