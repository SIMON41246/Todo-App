import 'package:get/get.dart';
import 'package:tod0_list/features/home/home_controller.dart';

import 'theme_service.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    //Get.put<ApiCalls>(ApiCalls());
    Get.put<ThemeService>(ThemeService());
    Get.put(HomeController());
  }
}
