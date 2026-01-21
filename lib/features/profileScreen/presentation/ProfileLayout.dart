import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/ThemeController.dart';

class Profilelayout extends StatelessWidget {
  Profilelayout({super.key});

  final ThemeController c = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Obx(() => SwitchListTile(
        title: const Text("Dark Mode"),
        value: c.isDark.value,
        onChanged: (v) => c.toggle(v ?? false),
        controlAffinity: ListTileControlAffinity.trailing,
      )),
    );
  }
}
