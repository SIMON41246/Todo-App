import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'utils/constants/custom_theme.dart';
import 'utils/helpers/bindings.dart';
import 'utils/helpers/theme_service.dart';
import 'utils/routes/routes.dart';



class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeService themeService = Get.find();

    return ScreenUtilInit(
      designSize: const Size(393, 852), // Match your design size
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return FutureBuilder<String>(
          future: AppRoutes.getInitialRoute(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const SizedBox(); // Show empty widget while loading
            }
            return Obx(() => GetMaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: lightTheme,
                  darkTheme: darkTheme,
                  themeMode: themeService.themeMode.value,
                  getPages: AppRoutes.getPages,
                  initialRoute: snapshot.data,
                  initialBinding: AppBindings(),
                ));
          },
        );
      },
    );
  }
}
