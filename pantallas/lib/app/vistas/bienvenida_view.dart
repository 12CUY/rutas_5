import 'package:flutter/material.dart';

class BienvenidaView extends StatelessWidget {
  const BienvenidaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Fondo azul para la pantalla
      appBar: AppBar(
        backgroundColor: Colors.black, // Barra superior negra
        title: const Text(
          'Bienvenida',
          style: TextStyle(color: Colors.white), // Texto blanco para la app bar
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.7), // Fondo negro semi-transparente
              borderRadius: BorderRadius.circular(10), // Bordes redondeados
            ),
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  '¡Bienvenido a la aplicación!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center, // Alinear el texto al centro
                ),
                const SizedBox(height: 20),
                // Botón para continuar
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/description');

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent, // Color de fondo azul del botón
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  ),
                  child: const Text(
                    'Empezar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
