import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:task/aboarding/model/onboarding_model.dart';
import 'package:task/pages/login.dart';

part 'onboarding_controller_state.dart';

class OnboardingControllercubit extends Cubit<OnboardingControllerState> {
  OnboardingControllercubit() : super(OnboardingControllerIntial());
  PageController pageController = PageController();

  void onchangetonext() {
    pageController.nextPage(
        duration: Duration(seconds: 2), curve: Curves.bounceIn);
  }

  Future<void> oncallskip(BuildContext context) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setBool('onboarding', true);
    Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => LoginPage(),
      ),
    );
  }

  List data = [
    onboardingModel(
      image: 'assests/images/logo.png',
      title: 'first',
      subtitle: 'first screen',
      color: const Color.fromARGB(255, 41, 93, 43),
    ),
    onboardingModel(
        image: 'assests/images/logo.png',
        title: 'second',
        subtitle: 'second screen',
        color: const Color.fromARGB(255, 115, 138, 157)),
    onboardingModel(
        image: 'assests/images/logo.png',
        title: 'third',
        subtitle: 'third screen',
        color: Colors.red),
  ];
}
