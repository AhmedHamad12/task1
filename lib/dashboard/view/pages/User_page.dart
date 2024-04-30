import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor : Color(0xFF345069),
        body: ListView(
          children: [ Container(
                height: 100,
               width: 100,
                child: Icon(Icons.person, size: 70, color: Colors.grey,),
              ), Container(
               height: 100,
               width: 100,
                child: Icon(Icons.person, size: 70, color: Colors.grey,),
              ),
               Container(
               height: 100,
               width: 100,
                child: Icon(Icons.person, size: 70, color: Colors.grey,),
              ),
              
      ]));
  }
}
