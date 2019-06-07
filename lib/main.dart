import 'dart:math';
import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: CoolBox(),
      )),
    );
  }
}

class CoolBox extends StatefulWidget {
  const CoolBox({
    Key key,
  }) : super(key: key);

  @override
  _CoolBoxState createState() => _CoolBoxState();
}

class _CoolBoxState extends State<CoolBox> {
  double width = 100;
  double height = 100;
  Color color = Colors.green;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: Duration(seconds: 2),
        curve: Curves.bounceInOut,
        color: color,
        width: width,
        height: height,
        child: FlatButton(
          child: Text('Random'),
          onPressed: () {
            setState(() {
              width = Random().nextDouble() * 400;
              height = Random().nextDouble() * 400;

              int r = Random().nextInt(255);
              int b = Random().nextInt(255);
              int g = Random().nextInt(255);
              color = Color.fromRGBO(r, b, g, 1);
            });
          },
        ));
  }
}
