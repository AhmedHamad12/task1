import 'package:flutter/material.dart';
// import 'package:task/categories/categories.dart';

import 'package:task/pages/login.dart';
// import 'package:task/pages/signup.dart';
// import 'package:task/pages/forgetpassPage.dart';

// import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:task/aboarding/view/page/onboarding_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  bool onboarding = sharedPreferences.getBool('onboarding') ?? false;

  runApp(MaterialApp(
    home: Navigator(
      pages: [
        MaterialPage(child: LoginPage()),
      ],
      onPopPage: (route, result) => route.didPop(result),
    ),
  ));
}
