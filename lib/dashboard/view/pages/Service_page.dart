import 'package:flutter/material.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: Color(0xFF345069)),
      child: Icon(Icons.category ,size: 70, color: Colors.grey,),
    ));
  }
}