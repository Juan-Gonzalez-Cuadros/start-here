import 'package:flutter/material.dart';

// Vista principal de Mi Changarro
// Conectaa con botones a 'Iniciar Sesion' y 'Crear Cuenta'
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inicio',
      home: Scaffold(
        body: Container(
          child: const Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              '¿Sin ganas de salir?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
