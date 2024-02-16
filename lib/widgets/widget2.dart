import 'package:flutter/material.dart';

class MyWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 250,
      color: Color.fromARGB(255, 255, 255, 255),
      child: Column(
        children: [
          Text(
            "APRENDE A CREAR WEBS CON FLUTTER",
            style: TextStyle(
              fontSize: 32,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700, 
              color: Colors.black,
            ),
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}

class MyWidget3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Color.fromARGB(255, 255, 255, 255),
      width: 400,
      height: 250,
      child: ElevatedButton(
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(Size(250, 70)),
        ),
        onPressed: () {
          
        },
        child: Text(
          "about as",
        ),
      ),
    );
  }
}
