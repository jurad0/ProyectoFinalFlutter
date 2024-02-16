import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyWidget4 extends StatefulWidget {
  @override
  State<MyWidget4> createState() => _MyWidget4State();
}

class _MyWidget4State extends State<MyWidget4> {
  int contador = 0; // Inicializa el contador con un valor inicial

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 104, 183, 247),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$contador',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 330,
                    fontWeight: FontWeight.w100,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildRoundButton('-1', restar),
              SizedBox(width: 55),
              buildReloadButton(empezar),
              SizedBox(width: 55),
              buildRoundButton('+1', sumar),
            ],
          ),
        ],
      ),
    );
  }

  void sumar() {
    setState(() {
      contador++;
    });
  }

  void restar() {
    setState(() {
      if(contador>0){
        contador--;
      }
    });
  }
  void empezar() {
  setState(() {
    contador = 0;
  });
}

  }

  Widget buildRoundButton(String text, VoidCallback pressBoton) {
    return GestureDetector(
      onTap: pressBoton,
      child: Container(
        width: 60,
        height: 60,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 152, 212, 255),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: Colors.white,
            width: 2.0,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
      ),
    );
  }

 




/*
class MyWidget4 extends StatefulWidget {
  @override
  State<MyWidget4> createState() => _MyWidget4State();
}

class _MyWidget4State extends State<MyWidget4> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 104, 183, 247),      
      width: MediaQuery.of(context).size.width,
      height:MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '13',
                 style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 330,fontWeight: FontWeight.w100,color: Colors.white),),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildRoundButton('-1', restar),
              SizedBox(width: 55), 
              buildReloadButton(),
              SizedBox(width: 55), 
              buildRoundButton('+1', sumar),
            ],
          ),
        ],
      ),
    );
}









void sumar() {
  setState(() {
    contador++;
  });
}

void restar() {
  setState(() {
    contador--;
  });
}



Widget buildRoundButton(String text, VoidCallback pressBoton) {
  return GestureDetector(
    onTap: pressBoton(text), // No necesitas los paréntesis aquí
    child: Container(
      width: 60,
      height: 60,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 152, 212, 255),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Colors.white,
          width: 2.0,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
    ),
  );
}
*/

Widget buildReloadButton(VoidCallback pressBoton) {
  return GestureDetector(
    onTap: pressBoton,
    child: Container(
      width: 60,
      height: 60,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 152, 212, 255),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Colors.white,
          width: 2.0,
        ),
      ),
      child: Center(
        child: Icon(
          Icons.refresh,
          size: 30,
          color: Color.fromARGB(255, 255, 255, 255),
        ), // Color azul
      ),
    ),
  );
}























 

