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
    return MaterialApp(
      title: 'Mi Changarro',
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            SvgPicture.asset(
              "lib/img/tcinicio.svg",
              alignment: Alignment.center,
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Align(alignment: Alignment.centerLeft),
                const Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Text(
                    '¿Sin ganas de salir?',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFF5D39),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'No te preocupes. Tenemos una gran selección de productos de tiendas locales. Lo que necesites lo llevamos a tu casa.',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => const IniciarSesion()),
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
                                  builder: (context) => const CrearCuenta()),
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
          ],
        ),
      ),
    );
  }
}
