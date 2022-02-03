import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CrearCuenta extends StatelessWidget {
  const CrearCuenta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            child: SvgPicture.asset(
              "lib/img/tclogonaranja.svg",
              alignment: Alignment.topCenter,
            ),
          ),
          const Text(
            'Registrate',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
            ),
          ),
        ],
      ),
    );
  }
}
