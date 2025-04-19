import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Themechanger extends GetxController {
  RxBool darkMode = false.obs;

  setThemeMode(bool value) {
    darkMode.value = value;
    if (value) {
      Get.changeThemeMode(ThemeMode.dark);
    } else {
      Get.changeThemeMode(ThemeMode.light);
    }
  }
}
