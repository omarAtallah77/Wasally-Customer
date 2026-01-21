import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../SignIn/presentation/SignInLayout.dart';
import '../../widgets.dart';

class Signuplayout extends StatelessWidget {
  Signuplayout({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController ConfirmpasswordController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Text("Welcome to Wasaly", style: TextStyle(fontSize: 30)),
                Text("Sign up to continue", style: TextStyle(fontSize: 20)),

                SizedBox(height: 20),
                TextFormInput(
                  TextController: nameController,
                  inputType: "Full Name",
                ),
                SizedBox(height: 20),
                TextFormInput(
                  TextController: emailController,
                  keyboardType: TextInputType.emailAddress,
                  inputType: "Email",
                ),
                SizedBox(height: 20),
                TextFormInput(
                  TextController: phoneController,
                  inputType: "Phone Number",
                ),
                SizedBox(height: 20),
                PasswordFormField(
                  passwordController: passwordController,
                ),
                SizedBox(height: 20),
                PasswordFormField(
                  passwordController: ConfirmpasswordController,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Form is valid, perform sign-in logic here
                    } else {
                      print("not valid");
                    }
                  },
                  child: const Text('Sign Up'),
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    Get.to(SignInlayout());
                  },
                  child: const Text('Already have an account? Sign Ip'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
