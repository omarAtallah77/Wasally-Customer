import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../SignUp/presentation/SignUpLayout.dart';
import '../../widgets.dart';
import '../core/validation.dart';

class SignInlayout extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  SignInlayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Welcome to Wasaly", style: TextStyle(fontSize: 30)),
                const Text(
                  "Sign in to continue",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 20),
              TextFormInput(
                TextController: emailController,
                inputType: "Email",
              ),
                const SizedBox(height: 20),
                PasswordFormField(
                  passwordController: passwordController,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Form is valid, perform sign-in logic here
                    } else {
                      print("not valid");
                    }
                  },
                  child: const Text('Sign In'),
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    Get.to(Signuplayout());
                  },
                  child: const Text('Don\'t have an account? Sign Up'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
