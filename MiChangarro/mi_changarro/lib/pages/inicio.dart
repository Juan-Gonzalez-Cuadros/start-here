import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mi_changarro/pages/inicio_tienda.dart';

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
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              separatorBuilder: (context, _) => const SizedBox(width: 12),
              itemBuilder: (context, index) => buildCardCategory(),
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
          SizedBox(
            height: 160,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              separatorBuilder: (context, _) => const SizedBox(width: 12),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => InicioTienda()),
                  );
                },
                child: buildCardPopulares(),
              ),
            ),
          ),
          const SizedBox(height: 20),
          //Tarjetas negocios
          SizedBox(
            height: 160,
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              itemCount: 3,
              separatorBuilder: (context, _) => const SizedBox(height: 12),
              itemBuilder: (context, index) => buildCardShop(),
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildCardCategory() => Container(
      width: 80,
      height: 80,
      decoration: const BoxDecoration(
          color: Color(0xFFE5E3E3),
          borderRadius: BorderRadius.all(Radius.circular(8))),
      //child: Image,
    );

Widget buildCardPopulares() => Container(
      padding: const EdgeInsets.all(8),
      width: 200,
      height: 160,
      decoration: const BoxDecoration(
          color: Color(0xFFF5F4F4),
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //Imagen
          SizedBox(
            width: 180,
            height: 110,
            child: Image.asset(
              'lib/img/tienda1.png',
              fit: BoxFit.fill,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  //Texto Nombre
                  Text(
                    'Nombre Tienda',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2274A5),
                    ),
                  ),
                  //Texto Tipo
                  Text(
                    'Tipo Tienda',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF919B9D),
                    ),
                  ),
                ],
              ),
              //Estrellas
              RatingBar(
                  initialRating: 4,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemSize: 15,
                  itemCount: 4,
                  ratingWidget: RatingWidget(
                      full: const Icon(Icons.star, color: Colors.orange),
                      half: const Icon(
                        Icons.star_half,
                        color: Colors.orange,
                      ),
                      empty: const Icon(
                        Icons.star_outline,
                        color: Colors.orange,
                      )),
                  onRatingUpdate: (value) {
                    // setState(() {
                    //   _ratingValue = value;
                    // });
                  }),
            ],
          ),
        ],
      ),
    );

Widget buildCardShop() => Container(
      decoration: const BoxDecoration(
          color: Color(0xFFF5F4F4),
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            height: 80,
            child: Image.asset(
              'lib/img/tienda2.png',
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Texto Nombre
              const Text(
                'Nombre Tienda',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2274A5),
                ),
              ),
              //Texto Tipo
              const Text(
                'Tipo Tienda',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF919B9D),
                ),
              ),
              RatingBar(
                  initialRating: 4,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemSize: 14,
                  itemCount: 4,
                  ratingWidget: RatingWidget(
                      full: const Icon(Icons.star, color: Colors.orange),
                      half: const Icon(
                        Icons.star_half,
                        color: Colors.orange,
                      ),
                      empty: const Icon(
                        Icons.star_outline,
                        color: Colors.orange,
                      )),
                  onRatingUpdate: (value) {
                    // setState(() {
                    //   _ratingValue = value;
                    // });
                  }),
            ],
          ),
        ],
      ),
    );
