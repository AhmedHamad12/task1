import 'package:flutter/material.dart';
import 'package:task/categories/categories.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              header(context),
              inputField(context),
              forgotPassword(context),
              signup(context),
            ],
          ),
        ),
      ),
    );
  }
}
