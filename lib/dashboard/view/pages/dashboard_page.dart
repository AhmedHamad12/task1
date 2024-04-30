import 'package:flutter/material.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar_item.dart';
import 'package:task/dashboard/view/pages/Home_page.dart';
import 'package:task/dashboard/view/pages/Service_page.dart';
import 'package:task/dashboard/view/pages/User_page.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});
  final _pageControlller = PageController();

  @override
  void dispose() {
    _pageControlller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF345069),
        ),
        body: PageView(
          controller: _pageControlller,
          children: const <Widget>[HomePage(), UserPage(), ServicePage()],
        ),
        extendBody: true,
        bottomNavigationBar: RollingBottomBar(
          color: const Color.fromARGB(255, 255, 240, 219),
          controller: _pageControlller,
          flat: true,
          useActiveColorByDefault: false,
          items: const [
            RollingBottomBarItem(Icons.home,
                label: 'Home', activeColor: Color.fromARGB(255, 0, 0, 0)),
            RollingBottomBarItem(Icons.person,
                label: 'Users', activeColor: Color.fromARGB(255, 0, 0, 0)),
            RollingBottomBarItem(Icons.category,
                label: 'Service', activeColor: Color.fromARGB(255, 0, 0, 0)),
          ],
          enableIconRotation: true,
          onTap: (index) {
            _pageControlller.animateToPage(
              index,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOut,
            );
          },
        ),
      ),
    );
  }
}
