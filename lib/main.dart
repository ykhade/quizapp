import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => _controller.animateTo(1000,
              duration: Duration(seconds: 2), curve: Curves.bounceIn),
        ),
        body: ListView.builder(
          controller: _controller,
          itemBuilder: (context, idx) {
            return Container(
              color: Colors.orangeAccent,
              margin: EdgeInsets.all(20),
              height: 100,
              child: Text('$idx'),
            );
          },
        ),
      ),
    );
  }
}
