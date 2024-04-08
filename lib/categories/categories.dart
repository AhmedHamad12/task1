import 'package:flutter/material.dart';
import 'package:task/pages/signup.dart';

header(context) {
  return const Column(
    children: [
      Text(
        "LogIn",
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      ),
      Text("Please Enter UR Email and Password "),
    ],
  );
}

inputField(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      TextField(
        decoration: InputDecoration(
            hintText: "Username",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
            fillColor: Colors.purple.withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.person)),
      ),
      const SizedBox(height: 10),
      TextField(
        decoration: InputDecoration(
          hintText: "Password",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none),
          fillColor: Colors.purple.withOpacity(0.1),
          filled: true,
          prefixIcon: const Icon(Icons.password),
        ),
        obscureText: true,
      ),
      const SizedBox(height: 10),
      ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SignupPage()));
        },
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          padding: const EdgeInsets.symmetric(vertical: 16),
          backgroundColor: Color.fromARGB(255, 2, 9, 110),
        ),
        child: const Text(
          "Login",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      )
    ],
  );
}

forgotPassword(context) {
  return TextButton(
    onPressed: () {},
    child: const Text(
      "Forgot password ? ",
      style: TextStyle(color: Color.fromARGB(255, 2, 4, 128)),
    ),
  );
}

signup(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("Dont have an account?  "),
      TextButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => SignupPage()));
        },
        child: const Text(
          "sign up",
          style: TextStyle(
            color: Color.fromARGB(255, 6, 17, 122),
            fontSize: 18,
          ),
        ),
      )
    ],
  );
}
