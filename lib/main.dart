import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(CupertinoApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("First Route"),
      ),
      child: Center(
          child: CupertinoButton.filled(
        child: Text('Open Route'),
        onPressed: () {
          Navigator.push(
            context,
            CupertinoPageRoute(builder: (context) => SecondRoute()),
          );
        },
      )),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Colors.red,
        middle: Text('Second Route'),
      ),
      child: Center(
        child: CupertinoButton.filled(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go Back!'),
        ),
      ),
    );
  }
}
