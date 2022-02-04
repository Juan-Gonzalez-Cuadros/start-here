// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IniciarSesion extends StatelessWidget {
  const IniciarSesion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              SvgPicture.asset(
                "lib/img/tcinicsesion.svg",
                height: 100,
              ),
              SvgPicture.asset("lib/img/tclogoblanco.svg"),
            ],
          ),
          const Text(
            'Inicia sesión',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFF5D39),
            ),
          ),
          Column(
            children: const [
              TextField(
                decoration: InputDecoration(
                  hintText: "Nombre completo",
                  labelStyle: TextStyle(color: Color(0xFF2274A5)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0))),
                  fillColor: Color(0xFFFFBD2D),
                  filled: true,
                ),
                keyboardType: TextInputType.name,
                obscureText: true,
                maxLength: 30,
              ),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
