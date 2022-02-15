import 'package:flutter/material.dart';

class InicioProducto extends StatefulWidget {
  InicioProducto({Key? key}) : super(key: key);

  @override
  State<InicioProducto> createState() => _InicioProductoState();
}

class _InicioProductoState extends State<InicioProducto> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SizedBox(
            height: 80,
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              itemCount: 5,
              separatorBuilder: (context, _) => const SizedBox(height: 20),
              itemBuilder: (context, index) => buildCardProduct(),
            ),
          ),
        ),
      ],
    );
  }
}

Widget buildCardProduct() => Container(
      padding: const EdgeInsets.all(10),
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
            children: const [
              //Texto Nombre
              Text(
                'Nombre Producto',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFF5D39),
                ),
              ),
              //Texto Tipo
              Text(
                'Descripcion Producto',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF2A3D45),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Precio',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF2A3D45),
                ),
              ),
            ],
          ),
          const SizedBox(width: 12),
          SizedBox(
            width: 120,
            height: 80,
            child: Image.asset(
              'lib/img/tienda1.png',
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
