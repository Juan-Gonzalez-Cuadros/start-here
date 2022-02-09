// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mi_changarro/crear_cuenta.dart';

class IniciarSesion extends StatelessWidget {
  const IniciarSesion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Imagen con logo
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.40,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                SvgPicture.asset(
                  "lib/img/tcinicsesion.svg",
                  //Transform a la izquierda
                  //Usar safe area
                  fit: BoxFit.fitWidth,
                  //width: 1000,
                ),
                SvgPicture.asset("lib/img/tclogoblanco.svg"),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.fromLTRB(40, 0, 70, 0),
            child: const FittedBox(
              fit: BoxFit.cover,
              child: Text(
                'Inicia sesión',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 40,
                  color: Color(0xFFFF5D39),
                ),
              ),
            ),
          ),
          //Login Form
          Container(
            padding: const EdgeInsets.fromLTRB(40, 0, 70, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                buildISCorreo(),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 200,
                      child: buildISPassword(),
                    ),
                    Ink(
                      decoration: const ShapeDecoration(
                          shape: CircleBorder(), color: Color(0xFF2274A5)),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_right),
                        color: const Color(0xFFFFFFFC),
                        iconSize: 40,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                // Textos olvde contraseña y crear cuenta
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text("Olvidé mi contraseña",
                            style: TextStyle(
                                decoration: TextDecoration.underline)),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            alignment: Alignment.centerLeft),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CrearCuenta()));
                        },
                        child: const Text("Crear cuenta",
                            style: TextStyle(
                                decoration: TextDecoration.underline)),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            alignment: Alignment.topLeft),
                      ),
                    ),
                  ],
                ),
                // Botones de facebook y mail
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Ink(
                      decoration: const ShapeDecoration(
                          shape: CircleBorder(), color: Color(0xFF2274A5)),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.facebook),
                        color: const Color(0xFFFFFFFC),
                        iconSize: 40,
                      ),
                    ),
                    Ink(
                      decoration: const ShapeDecoration(
                          shape: CircleBorder(), color: Color(0xFF2274A5)),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.mail_rounded),
                        color: const Color(0xFFFFFFFC),
                        iconSize: 40,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildISCorreo() => const TextField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 6),
        prefixIcon: Padding(
          padding: EdgeInsetsDirectional.only(start: 10),
          child: Icon(Icons.person, color: Color(0xFFFFFFFC)),
        ),
        hintText: "Correo",
        labelStyle: TextStyle(color: Color(0xFFFFFFFC)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          borderSide: BorderSide(color: Color(0xFFFFBD2D), width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          borderSide: BorderSide(color: Color(0xFFFFBD2D), width: 2),
        ),
        fillColor: Color(0xFFFFBD2D),
        filled: true,
      ),
      keyboardType: TextInputType.emailAddress,
    );

Widget buildISPassword() => const TextField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        prefix: null,
        hintText: "Contraseña",
        labelStyle: TextStyle(color: Color(0xFFFFFFFC)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          borderSide: BorderSide(color: Color(0xFFFFBD2D), width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          borderSide: BorderSide(color: Color(0xFFFFBD2D), width: 2),
        ),
        fillColor: Color(0xFFFFBD2D),
        filled: true,
      ),
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
    );
