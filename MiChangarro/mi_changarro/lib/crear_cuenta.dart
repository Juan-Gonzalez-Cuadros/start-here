import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CrearCuenta extends StatelessWidget {
  const CrearCuenta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SvgPicture.asset("lib/img/tclogonaranja.svg"),
        ],
      ),
    );
  }
}
