import 'package:flutter/material.dart';
import '../widgets/login.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            LoginWidget(),
            // Otros widgets aquí
          ],
        ),
      ),
    );
  }
}
