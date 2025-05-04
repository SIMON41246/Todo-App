import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/custom_txt_strings.dart';

class ThemeService extends GetxController {
  Rx<ThemeMode> themeMode = ThemeMode.system.obs;

  Color get backgroundColor =>
      themeMode.value == ThemeMode.dark ? Colors.black : Colors.white;

  @override
  void onInit() {
    _loadTheme();
    super.onInit();
  }

  void _loadTheme() async {
    String? savedTheme = await storage.read(key: CustomTextStrings.THEME_KEY);

    if (savedTheme == "light") {
      themeMode.value = ThemeMode.light;
    } else if (savedTheme == "dark") {
      themeMode.value = ThemeMode.dark;
    } else {
      themeMode.value = ThemeMode.system; // Default to system theme
    }

    Get.changeThemeMode(themeMode.value);
  }

  void toggleTheme() async {
    if (themeMode.value == ThemeMode.light) {
      themeMode.value = ThemeMode.dark;
    } else if (themeMode.value == ThemeMode.dark) {
      themeMode.value = ThemeMode.light;
    } else {
      themeMode.value = ThemeMode.dark; // If system, switch to dark first
    }

    await storage.write(
        key: CustomTextStrings.THEME_KEY,
        value: themeMode.value.toString().split('.').last);

    Get.changeThemeMode(themeMode.value);
    update(); // Notify UI to rebuild with new colors
  }
}
