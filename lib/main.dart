import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/Auth/SignIn/presentation/SignInLayout.dart';

void main() {
  runApp(my_app());
}

class my_app extends StatelessWidget {
  const my_app({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:SignInlayout(),
    );
  }
}
