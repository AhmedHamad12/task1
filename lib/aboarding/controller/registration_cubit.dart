import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'package:task/aboarding/controller/registraion_state.dart';

class RegistrationCubit extends Cubit<RegistrationState> {
  RegistrationCubit() : super(RegistrationInitial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  GlobalKey formKey = GlobalKey<FormState>();

  void onPressedConfirmedButton() {}
}
