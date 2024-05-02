import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/pages/ForgetPassPage.dart';

part 'verification_state.dart';

class VerificationCubit extends Cubit<VerificationState> {
  VerificationCubit() : super(VerificationInitial());
  TextEditingController pincodecontroller = TextEditingController();

  final String validCode = '22222';

  void onTapConfirm(BuildContext context) {
    if (pincodecontroller.text == validCode) {
      print("valid");
      // Navigate to forget password page
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => ForgetPassPage()));
    } else {
      print("invalid");
    }
  }
}
