// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IniciarSesion extends StatelessWidget {
  const IniciarSesion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SvgPicture.asset("lib/img/tcinicsesion.svg"),
          SvgPicture.asset("lib/img/tclogoblanco.svg"),
        ],
      ),
    );
  }
}
