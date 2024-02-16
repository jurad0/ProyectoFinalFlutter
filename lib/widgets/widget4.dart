import 'package:flutter/material.dart';

class widget4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Hola, soy Pablo, desarrollador frontend y estudiante en Escuela Profesional Vedruna. Actualmente curso segundo de Desarrollo de Aplicaciones Web y tengo conocimientos sobre Spring, React, entre muchas otras.",
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // Aquí puedes agregar la lógica para contactar
            },
            child: Text("Contáctame"),
          ),
        ],
      ),
    );
  }
}

