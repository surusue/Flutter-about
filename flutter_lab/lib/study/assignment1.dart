import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final random = Random();
  List<Color> colors = [Colors.red, Colors.blue, Colors.yellow];

  void onPressed() {
    setState(() {
      colors = [
        Color.fromARGB(
          random.nextInt(256),
          random.nextInt(256),
          random.nextInt(256),
          random.nextInt(256),
        ),
        Color.fromARGB(
          random.nextInt(256),
          random.nextInt(256),
          random.nextInt(256),
          random.nextInt(256),
        ),
        Color.fromARGB(
          random.nextInt(256),
          random.nextInt(256),
          random.nextInt(256),
          random.nextInt(256),
        ),
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                color: colors[0],
                height: 50.0,
              ),
            ),
            Expanded(
              child: Container(
                color: colors[1],
                height: 50.0,
              ),
            ),
            Expanded(
              child: Container(
                color: colors[2],
                height: 50.0,
              ),
            ),
            Container(
              color: Colors.white,
              height: 70.0,
              child: Center(
                child: IconButton(
                  onPressed: onPressed,
                  icon: Icon(
                    Icons.favorite,
                    size: 50,
                    color: Colors.pink,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
