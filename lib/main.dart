import 'package:flutter/material.dart';
import 'widgets/widget1.dart';
import 'package:google_fonts/google_fonts.dart';
import 'paginas/hombre.dart';
import 'paginas/mujer.dart';
import 'paginas/login.dart';
import 'paginas/about.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure Flutter is initialized
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/hombre': (context) => Hombre(), 
        '/mujer': (context) => Mujer(), 
        '/inicio': (context) => AboutPage(), 
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    MyWidget(),
                    SizedBox(height: 150),
                    
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











