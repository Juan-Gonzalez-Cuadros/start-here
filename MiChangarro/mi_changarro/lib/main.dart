import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mi_changarro/crear_cuenta.dart';
import 'package:mi_changarro/iniciar_sesion.dart';

// Vista principal de Mi Changarro
// Conectaa con botones a 'Iniciar Sesion' y 'Crear Cuenta'
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      title: 'Mi Changarro',
      home: Scaffold(
        body: SizedBox(
          height: size.height,
          width: double.infinity,
          child: Stack(
            children: <Widget>[
              //Imagen svg de fondo
              Positioned(
                top: 30,
                left: 0,
                child: SvgPicture.asset(
                  "lib/img/tcinicio.svg",
                  width: size.width,
                ),
              ),
              //Contenido: Titulo, Parrafo y botones
              Container(
                padding: const EdgeInsets.fromLTRB(20, 40, 60, 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    const Align(alignment: Alignment.centerLeft),
                    const Text(
                      '¿Sin ganas de salir?',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFF5D39),
                      ),
                    ),
                    const SizedBox(height: 33),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'No te preocupes. Tenemos una gran selección de productos de tiendas locales. Lo que necesites lo llevamos a tu casa.',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 60),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const IniciarSesion()),
                                );
                              },
                              child: const Text(
                                'Inicia Sesión',
                                style: TextStyle(color: Color(0xFFFFFFFC)),
                              ),
                              color: const Color(0xFF2274A5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                            ),
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const CrearCuenta()),
                                );
                              },
                              child: const Text(
                                'Crear Cuenta',
                                style: TextStyle(color: Color(0xFFFFFFFC)),
                              ),
                              color: const Color(0xFF2274A5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
