import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _userController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  // JSON con varios usuarios y contraseñas
  final Map<String, String> users = {
    'jurado': 'jurado',
    // Puedes agregar más usuarios según sea necesario
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Cambiando el color de fondo a blanco
      body: Row(
        children: [
          Expanded(
            flex: 35,
            child: Container(
              color: Colors.white, // Cambiando el color de fondo a blanco
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://s3-alpha-sig.figma.com/img/171e/ba33/511a5c08fc9660dd570b084dc81efa9d?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Y4rZHKhGeG3neAiJ-fmwuaUTJJqCjtaQ5etKoqywGrP3GCkF3RvyYz19czrLvwOQZv~Em-0TQV9QTtTyMjN3e0dGWwpZ4f2kgKeQkDVGqvEx17wCGuJSdqwMJfhVGKGWes1OCDTcRpseE5Eq3OGhtbFIHVChSomk~W7jJEZcPpp~fX1U0Ozoj9wYUcchJyFe3~MQTg4XzyOF0KrDQfvh4fEEVrqadg3Gq0xk1IXQQxZ628Xq2ip7Bgl0SVrxWoEbTA88gj64bEBu7yMRyXay4LxFVxhtPiu5Uq4IgxhXLrYscO0fnPGTq3pWmy6Y2zkQN1Q4utPPOQAg4dQQFYXVBw__',
                    width: 300,
                    height: 200,
                  ),
                  TextField(
                    controller: _userController,
                    decoration: InputDecoration(labelText: 'Usuario'),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(labelText: 'Contraseña'),
                  ),
                  SizedBox(height: 16),
                  Container(
                    width: 200,
                    height: 70, // Aumentando el tamaño del botón
                    child: ElevatedButton(
                      onPressed: () {
                        _validateCredentials();
                      },
                      child: Text('Login'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors
                            .green, // Cambiando el color del botón a verde
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 65,
            child: Container(
              color: Colors.red, // Solo para visualización
              child: Image.network(
                'https://s3-alpha-sig.figma.com/img/0d77/84a2/40379b636b4d536ae215a5eebafb4985?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=S8EWJfhhvxK1zcpk5QJWgIYKNa~QnA-AUJ67HKnMdnzoy~iTRaNAWnm117BbdMEIpA93AynTCWR2rauI-~eoQf1VWkZVNAYB9LwNjlJSMzAuXOf5zH~AtCeT73Yl4mgLNb~HwfFDVEk1lrfBbCaLqTtBJp8Bgeffd4HOMK-55C2~ALxKjeObHiCHp5hiOWJKU6Kxkk~psApQ3MN7f6X5KgLkx22hzl~vd3f-cNU8RMjslMrElgVhy2BtgBfZi6XYQWpnWq05jV1pvqm7v-LJY2bOT3X534jaW2~ju7OkPIqM3YhvBj7PjwAnrUjsC-~A4ZV8BpFpz3rqfbSkXQ8Wrg__',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _validateCredentials() {
    final enteredUser = _userController.text;
    final enteredPassword = _passwordController.text;

    // Verificar las credenciales en el JSON
    if (users.containsKey(enteredUser) &&
        users[enteredUser] == enteredPassword) {
      // Si las credenciales son válidas, navega a la ruta de 'hombre'
      Navigator.pushReplacementNamed(context, '/inicio');
    } else {
      // Mostrar un mensaje de error o realizar alguna acción si las credenciales son incorrectas
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Error de inicio de sesión'),
          content: Text('Usuario o contraseña incorrectos.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }
}
