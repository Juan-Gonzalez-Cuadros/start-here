import 'package:flutter/material.dart';
import 'package:mi_changarro/pages/inicio.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  final screens = [
    Inicio(),
    const Center(child: Text("Favoritos")),
    const Center(child: Text("Buscar")),
    const Center(child: Text("Carrito")),
    const Center(child: Text("Perfil")),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFFFFBD2D),
        iconSize: 35,
        selectedItemColor: const Color(0xFFFF5D39),
        unselectedItemColor: const Color(0xFFFFFFFC),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favoritos",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Buscar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Carrito",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Perfil",
          ),
        ],
      ),
    ));
  }
}
