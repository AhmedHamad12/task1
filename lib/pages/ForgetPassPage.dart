import 'package:flutter/material.dart';

class ResetForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'New Password',
        labelStyle: TextStyle(color: Colors.grey[700]),
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

class ConfirmPassForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Confirm New Password',
        labelStyle: TextStyle(color: Colors.grey[700]),
        filled: true,
        fillColor: const Color.fromARGB(255, 238, 238, 238),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

class ForgetPassPage extends StatelessWidget {
  const ForgetPassPage();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                "Reset Password",
                style: TextStyle(
                  color: Color.fromARGB(255, 60, 2, 249),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                "Please Enter Your New Password !",
                style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ResetForm(),
              SizedBox(height: 10),
              ConfirmPassForm(),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // primary: Color.fromARGB(255, 19, 49, 73),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Reset Password",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 86, 5, 235),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
