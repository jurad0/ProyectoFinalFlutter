import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FlutterLogo(
              size: 100,
              style: FlutterLogoStyle.markOnly,
            ),
            SizedBox(width: 5),
            Text(
              "Flutter",
              style: TextStyle(fontSize: 45),
            ),
          ],
        ),
        SizedBox(width: 500),
        Container(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Text("Inicio", style: TextStyle(fontSize: 25)),
              ),
              SizedBox(width: 35),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/hombre');
                },
                child: Text("hombre", style: TextStyle(fontSize: 25)),
              ),
              SizedBox(width: 35),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/about');
                },
                child: Text("About", style: TextStyle(fontSize: 25)),
              ),
              SizedBox(width: 35),
              Icon(
                Icons.search,
                color: const Color.fromARGB(255, 170, 170, 170),
                size: 36.0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}




/*import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center, 
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FlutterLogo(
              size: 100,
              style: FlutterLogoStyle.markOnly,
            ),
            SizedBox(width: 5),
            Text(
              "Flutter",
              style: TextStyle(fontSize: 45),
            ),
          ],
        ),
        SizedBox(width: 500),
        Container(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center, 
            children: [
              Text("Inicio", style: TextStyle(fontSize: 25)),
              SizedBox(width: 35),
              Text("Widgets", style: TextStyle(fontSize: 25)),
              SizedBox(width: 35),
              Text("About", style: TextStyle(fontSize: 25)),
              SizedBox(width: 35),
              Icon(
                Icons.search,
                color: const Color.fromARGB(255, 170, 170, 170),
                size: 36.0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
*/