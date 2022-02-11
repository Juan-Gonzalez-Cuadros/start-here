import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //Titulo
          const Text(
            'Hola, USUARIO',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFF5D39),
            ),
          ),
          //Texto de posicion actual
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.location_on),
            label: const Text("{Localizacion en mapa}",
                style: TextStyle(color: Color(0xFFFF5D39))),
            style: TextButton.styleFrom(
                padding: EdgeInsets.zero, alignment: Alignment.centerLeft),
          ),
          const SizedBox(height: 16),
          //Categorias
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Categorías',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFF5D39),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Ver todas",
                    style: TextStyle(color: Color(0xFF2A3D45), fontSize: 10)),
                style: TextButton.styleFrom(
                    padding: EdgeInsets.zero, alignment: Alignment.center),
              ),
            ],
          ),
          //Tarjetas de categorias
          SizedBox(
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buildCardCategory(),
              ],
            ),
          ),
          const SizedBox(height: 20),
          //Populares cerca de ti
          const Text(
            'Populares cerca de ti',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFF5D39),
            ),
          ),
          //Tarjetas negocios populares
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                buildCardPopulares(),
              ],
            ),
          ),
          //Tarjetas negocios
        ],
      ),
    );
  }
}

Widget buildCardCategory() => Container(
      width: 80,
      height: 80,
      color: const Color(0xFFE5E3E3),
      //child: Image,
    );

Widget buildCardPopulares() => Container(
      width: 180,
      height: 140,
      color: const Color(0xFFF5F4F4),
      child: Column(
        children: [
          //Image
          Row(
            children: [
              Column(
                children: const [
                  //Texto Nombre
                  //Texto Tipo
                ],
              ),
              //Estrellas
            ],
          ),
        ],
      ),
    );
