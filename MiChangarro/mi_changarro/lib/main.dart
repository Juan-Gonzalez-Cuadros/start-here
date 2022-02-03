import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mi_changarro/crearCuenta.dart';
import 'package:mi_changarro/iniciarSesion.dart';

// Vista principal de Mi Changarro
// Conectaa con botones a 'Iniciar Sesion' y 'Crear Cuenta'
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Changarro',
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Text(
                '¿Sin ganas de salir?',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                ),
              ),
            ),
            Container(
              color: Colors.orange[400], //#FFFF5d39
              padding: const EdgeInsets.fromLTRB(20, 0, 100, 0),
              child: Column(
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
                                builder: (context) => IniciarSesion()),
                          );
                        },
                        child: const Text(
                          'Inicia Sesión',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue[800],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => CrearCuenta()),
                          );
                        },
                        child: const Text(
                          'Crear Cuenta',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue[800],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
