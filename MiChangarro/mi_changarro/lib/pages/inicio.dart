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
        children: const <Widget>[
          Text(
            'Hola USUARIO',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 20,
              color: Color(0xFFFF5D39),
            ),
          ),
        ],
      ),
    );
  }
}
