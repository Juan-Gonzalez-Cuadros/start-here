import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class InicioResena extends StatefulWidget {
  InicioResena({Key? key}) : super(key: key);

  @override
  State<InicioResena> createState() => _InicioResenaState();
}

class _InicioResenaState extends State<InicioResena> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: TextButton(
            onPressed: () {},
            child: const Text("Escribe una reseña",
                style: TextStyle(decoration: TextDecoration.underline)),
            style: TextButton.styleFrom(
                padding: const EdgeInsets.all(10),
                alignment: Alignment.centerLeft),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 80,
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              itemCount: 5,
              separatorBuilder: (context, _) => const SizedBox(height: 20),
              itemBuilder: (context, index) => buildCardResena(),
            ),
          ),
        ),
      ],
    );
  }
}

Widget buildCardResena() => Container(
      padding: const EdgeInsets.fromLTRB(10, 10, 60, 10),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFC),
        border: Border.all(color: const Color(0xFFFFBD2D)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Texto Nombre
              const Text(
                'Nombre Producto',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFF5D39),
                ),
              ),
              //Texto Tipo
              const Text(
                'Descripcion Producto',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF2A3D45),
                ),
              ),
              const SizedBox(height: 20),
              RatingBar(
                  initialRating: 5,
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
          const SizedBox(width: 12),
          const CircleAvatar(
            backgroundImage: AssetImage(
              'lib/img/tienda1.png',
            ),
            radius: 35,
          ),
          // SizedBox(
          //   width: 120,
          //   height: 80,
          //   child: Image.asset(
          //     'lib/img/tienda1.png',
          //     fit: BoxFit.fill,
          //   ),
          // ),
        ],
      ),
    );
