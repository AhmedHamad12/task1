import 'package:flutter/material.dart';
import 'package:task/verification/View/pages/verification.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Email TextInput Example',
      home: EmailPage(),
    );
  }
}

class EmailPage extends StatefulWidget {
  @override
  _EmailPageState createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {
  TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Email Confirm Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Enter your email',
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                String email = _emailController.text;
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => VerivicationPage()));
                print('Email entered: $email');
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
