import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: new MyFirstWidget(
          color: Colors.blue,
        ),
      ),
    );
  }
}

class MyFirstWidget extends StatefulWidget {
  final Color color;

  const MyFirstWidget({Key key, this.color = Colors.red}) : super(key: key);

  @override
  _MyFirstWidgetState createState() => _MyFirstWidgetState();
}

class _MyFirstWidgetState extends State<MyFirstWidget> {
  int count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Text('$count'),
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
    );
  }
}
