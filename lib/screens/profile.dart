import 'package:flutter/material.dart';
import '../services/services.dart';

class ProfileScreen extends StatelessWidget {
  final AuthService auth = AuthService();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('profile'),
      ),
      body: Center(
        child: FlatButton(
          child: Text('Logout'),
          color: Colors.redAccent,
          onPressed: () async {
            await auth.signOut();
            Navigator.of(context)
                .pushNamedAndRemoveUntil('/', (route) => false); //Removed routing history from stack
          },
        ),
      ),
    );
  }
}
