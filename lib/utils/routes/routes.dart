import 'package:get/route_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tod0_list/features/home/home_screen.dart';

import '../../features/onboarding/onboarding_screen.dart';
import '../constants/custom_txt_strings.dart';

class AppRoutes {
  static Future<String> getInitialRoute() async {
    final prefs = await SharedPreferences.getInstance();
    final isOnboardingCompleted = prefs.getBool(CustomTextStrings.ONBOARDING_COMPLETED) ?? false;
    return isOnboardingCompleted ? CustomTextStrings.HOME : '/onboarding1';
  }

  static List<GetPage> getPages = [
    GetPage(name: '/onboarding1', page: () => const OnboardingScreen()),
    GetPage(name: '/home', page: () => const HomeScreen()),

  ];
}
