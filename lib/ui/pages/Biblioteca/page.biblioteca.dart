// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class PageBiblioteca extends StatefulWidget {
  const PageBiblioteca({super.key});

  @override
  State<PageBiblioteca> createState() => _PageBibliotecaState();
}

class _PageBibliotecaState extends State<PageBiblioteca> {
  int _index = 0;

  List la_lismanga = [
    {
      "title": "Manga 1",
      "link_image": "",
    },
    {
      "title": "Manga 1",
      "link_image": "",
    },
    {
      "title": "Manga 1",
      "link_image": "",
    },
    {
      "title": "Manga 1",
      "link_image": "",
    },
    {
      "title": "Manga 1",
      "link_image": "",
    },
    {
      "title": "Manga 1",
      "link_image": "",
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size lo_size = MediaQuery.of(context).size;
    double ld_width = MediaQuery.of(context).size.width;

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
      height: lo_size.height,
      width: lo_size.width,
      child: Column(
        children: [
          // Top Nav Bar
          TopNavBar(lo_size, h1, iconSize),

          // Contenido de la pagina: Categorias
          Categorias(lo_size, categoria),
          SizedBox(height: 10),

          // Contenido de la pagina: Lista de Mangas
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              // itemCount: (la_lismanga.length / 2).ceil(),
              itemBuilder: (context, i) {
                int i1 = 0;
                int i2 = 0;

                if (i == 0) {
                  i1 = 0;
                  i2 = 1;
                } else {
                  i1 = i * 2;
                  i2 = i * 2 + 1;
                }
                return Container(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 5),
                  margin: EdgeInsets.only(bottom: 10),
                  width: ld_width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CardManga(ld_width),
                      CardManga(ld_width),
                    ],
                  ),
                );
              },
            ),
          ),
          // ---------------
        ],
      ),
    );
  }

  ClipRRect CardManga(double ld_width) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
        width: ld_width * 0.5 - 15,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Stack(
          children: [
            Positioned(
              child: Container(
                width: ld_width * 0.5 - 15,
                height: 300,
                child: Image.network(
                  "https://i.pinimg.com/originals/63/1b/0f/631b0ffb4742f20387be121bcc67801b.jpg",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              child: Container(
                width: ld_width * 0.5 - 15,
                height: 300,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.transparent,
                      Colors.transparent,
                      const Color.fromARGB(150, 0, 0, 0)
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        padding: EdgeInsets.only(left: 15, bottom: 15),
                        child: Text("Manga 1")),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container Categorias(Size size, List<dynamic> categoria) {
    return Container(
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
    );
  }

  Container TopNavBar(Size size, double h1, double iconSize) {
    return Container(
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
