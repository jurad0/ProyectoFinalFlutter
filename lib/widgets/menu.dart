import 'package:flutter/material.dart';

class CustomImageBox extends StatelessWidget {
  final String imageUrl;
  final String text;
  final String navigateToRoute;

  CustomImageBox({
    required this.imageUrl,
    required this.text,
    required this.navigateToRoute,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navegar a la ruta especificada cuando se pulsa el recuadro
        Navigator.pushNamed(context, navigateToRoute);
      },
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Utiliza un widget RotatedBox para rotar el texto verticalmente
              RotatedBox(
                quarterTurns: 1, // Cambia la cantidad de giros según sea necesario
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 100.0, // Tamaño de la tipografía ajustado a 100px
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
