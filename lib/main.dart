                                  //main to run dasbourd// 
import 'package:flutter/material.dart';

import 'package:task/dashboard/view/pages/dashboard_page.dart';



// import 'package:task/pages/login.dart';
// import 'package:task/pages/signup.dart';
// import 'package:task/pages/forgetpassPage.dart';

import 'package:shared_preferences/shared_preferences.dart';
;
// import 'package:task/aboarding/view/page/onboarding_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  bool onboarding = sharedPreferences.getBool('onboarding') ?? false;

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Navigator(
      pages: [
        MaterialPage(child: Dashboard()),
      ],
      onPopPage: (route, result) => route.didPop(result),
    ),
  ));
}





////////////////////// main to run pin code ////////////////////////////////////////////
// import 'package:device_preview/device_preview.dart';
// import 'package:flutter/material.dart';

// // import 'package:task/dashboard/view/pages/dashboard_page.dart';
// // import 'package:device_preview/device_preview.dart';
// // // import 'package:task/categories/categories.dart';
// // import 'package:task/dashboard/view/pages/dashboard_page.dart';

// // // // import 'package:task/categories/categories.dart';
// // =======

// // import 'package:task/categories/categories.dart';
// // import 'package:task/dashboard/view/pages/dashboard_page.dart';

// // import 'package:task/categories/categories.dart';
// // >>>>>>> main

// // import 'package:task/pages/login.dart';
// // import 'package:task/pages/signup.dart';
// // import 'package:task/pages/forgetpassPage.dart';

// // import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:task/pages/login.dart';
// // import 'package:task/aboarding/view/page/onboarding_page.dart';

// // import 'package:flutter/material.dart';
// // import 'package:device_preview/device_preview.dart';
// // import 'package:shared_preferences/shared_preferences.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//   bool onBoarding = sharedPreferences.getBool("onboarding") ?? false;
//   runApp(DevicePreview(
//     enabled: true,
//     builder: (context) => MyApp(),
//   ));
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       useInheritedMediaQuery: true,
//       builder: DevicePreview.appBuilder,
//       home: LoginPage(),
//     );
//   }
// }
