import 'package:flutter/material.dart';

class DescriptionView extends StatelessWidget {
  const DescriptionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Fondo azul para la pantalla
      appBar: AppBar(
        backgroundColor: Colors.black, // Barra superior negra
        title: const Text(
          'Descripción del Proyecto',
          style: TextStyle(color: Colors.white), // Texto blanco para la app bar
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black
                  .withOpacity(0.7), // Fondo negro semi-transparente
              borderRadius: BorderRadius.circular(10), // Bordes redondeados
            ),
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Descripción del Proyecto',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ut, exercitationem aperiam eos blanditiis placeat quibusdam, sint nostrum quo libero ab perferendis at praesentium tenetur. Fuga eos blanditiis maxime repudiandae ipsam.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    height:
                        1.6, // Aumentar la altura de la línea para mejor legibilidad
                  ),
                  textAlign:
                      TextAlign.justify, // Alinea el texto de forma justificada
                ),
                const SizedBox(height: 20),
                // Botón para ir a la vista de opciones
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/options');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.blueAccent, // Color de fondo azul del botón
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 15),
                  ),
                  child: const Text(
                    'Ir a Opciones',
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
