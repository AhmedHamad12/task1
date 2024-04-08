import 'package:flutter/material.dart';
import 'package:task/categories/categories.dart';

import 'package:task/pages/login.dart';
import 'package:task/pages/signup.dart';
import 'package:task/pages/forgetpassPage.dart';

void main() {
  runApp(MaterialApp(
    home: Navigator(
      pages: [
        MaterialPage(child: LoginPage()),
      ],
      onPopPage: (route, result) => route.didPop(result),
    ),
  ));
}
