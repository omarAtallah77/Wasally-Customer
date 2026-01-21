import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ThemeController extends GetxController {
  final isDark = false.obs;

  @override
  void onInit() {
    isDark.value = Get.isDarkMode;
    super.onInit();
  }

  void toggle(bool value) {
    isDark.value = value;
    Get.changeThemeMode(value ? ThemeMode.dark : ThemeMode.light);
  }
}
