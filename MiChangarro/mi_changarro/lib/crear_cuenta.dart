import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mi_changarro/main.dart';

class CrearCuenta extends StatelessWidget {
  const CrearCuenta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFC),
        shadowColor: Colors.transparent,
        leading: const BackButton(
          color: Color(0xFF2274A5),
        ),
        title: SvgPicture.asset(
          "lib/img/tclogonaranja.svg",
          alignment: Alignment.topCenter,
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.fromLTRB(45, 0, 45, 0),
            child: const FittedBox(
              fit: BoxFit.cover,
              child: Text(
                'Registrate',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFF5D39),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(45),
            child: Form(
              child: ListView(
                shrinkWrap: true,
                children: [
                  buildNombre(),
                  const SizedBox(height: 20),
                  buildCorreo(),
                  const SizedBox(height: 20),
                  buildTelefono(),
                  const SizedBox(height: 20),
                  buildFechaN(),
                  const SizedBox(height: 20),
                  buildPassword(),
                  const SizedBox(height: 20),
                  buildComfirmPassword(),
                  const SizedBox(height: 50),
                  MaterialButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const MyApp()),
                      );
                    },
                    child: const Text(
                      'Siguiente',
                      style: TextStyle(color: Color(0xFFFFFFFC)),
                    ),
                    color: const Color(0xFFFFBD2D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildNombre() => TextFormField(
      decoration: const InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
          hintText: "Nombre completo",
          labelStyle: TextStyle(color: Color(0xFF2274A5)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(color: Color(0xFFFFBD2D), width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(color: Color(0xFFFFBD2D), width: 2),
          )),
      keyboardType: TextInputType.name,
    );

Widget buildCorreo() => TextFormField(
      decoration: const InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
          hintText: "Correo electrónico",
          labelStyle: TextStyle(color: Color(0xFF2274A5)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(color: Color(0xFFFFBD2D), width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(color: Color(0xFFFFBD2D), width: 2),
          )),
      keyboardType: TextInputType.emailAddress,
    );

Widget buildTelefono() => TextFormField(
      decoration: const InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
          hintText: "Teléfono",
          labelStyle: TextStyle(color: Color(0xFF2274A5)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(color: Color(0xFFFFBD2D), width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(color: Color(0xFFFFBD2D), width: 2),
          )),
      keyboardType: TextInputType.phone,
    );

Widget buildFechaN() => TextFormField(
      decoration: const InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
          hintText: "Fecha de nacimiento",
          labelStyle: TextStyle(color: Color(0xFF2274A5)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(color: Color(0xFFFFBD2D), width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(color: Color(0xFFFFBD2D), width: 2),
          )),
      keyboardType: TextInputType.datetime,
    );

Widget buildPassword() => TextFormField(
      decoration: const InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
          hintText: "Contraseña",
          labelStyle: TextStyle(color: Color(0xFF2274A5)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(color: Color(0xFFFFBD2D), width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(color: Color(0xFFFFBD2D), width: 2),
          )),
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
    );

Widget buildComfirmPassword() => TextFormField(
      decoration: const InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
          hintText: "Confirmar contraseña",
          labelStyle: TextStyle(color: Color(0xFF2274A5)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(color: Color(0xFFFFBD2D), width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(color: Color(0xFFFFBD2D), width: 2),
          )),
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
    );
