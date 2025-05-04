import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_colors.dart';

TextStyle customTextStyle(
    {required double fontSize, Color? color, required FontWeight fontWeight}) {
  return GoogleFonts.rubik(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color ?? Get.theme.splashColor,
  );
}

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: CustomColors.lightPrimary,
  colorScheme: ColorScheme.light(
    primary: CustomColors.lightPrimary,
    secondary: CustomColors.lightSecondary,
  ),
  cardColor: CustomColors.lightBackground,
  splashColor: CustomColors.lightText,
    hintColor: Colors.black,

  inputDecorationTheme: InputDecorationTheme(
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: BorderSide(color: CustomColors.lightTextTertiary),
    ),
    fillColor: CustomColors.lightTextTertiary,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: BorderSide(color: CustomColors.lightPrimary),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: BorderSide(color: CustomColors.lightTextTertiary),
    ),
  ),
  tabBarTheme: TabBarTheme(
    labelColor: CustomColors.lightPrimary,
    unselectedLabelColor: CustomColors.lightTextHint,
    indicator: BoxDecoration(
      border: Border(
          bottom: BorderSide(color: CustomColors.lightPrimary, width: 2.0)),
    ),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: CustomColors.lightBackground,
    titleTextStyle: GoogleFonts.rubik(
      fontSize: 20.sp,
      fontWeight: FontWeight.w600,
      color: CustomColors.lightText,
    ),
  ),
  dropdownMenuTheme: DropdownMenuThemeData(
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: CustomColors.lightBackground,
    selectedItemColor: CustomColors.lightPrimary,
    unselectedItemColor: CustomColors.lightTextHint,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: CustomColors.lightPrimary,
      textStyle: const TextStyle(color: Colors.white),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
    ),
  ),
  scaffoldBackgroundColor: CustomColors.lightBackground,
  textTheme: TextTheme(
    displayLarge: GoogleFonts.roboto(
      fontSize: 32.sp,
      fontWeight: FontWeight.bold,
      color: CustomColors.lightText,
    ),
    displayMedium: GoogleFonts.roboto(
      fontSize: 24.sp,
      fontWeight: FontWeight.bold,
      color: CustomColors.lightText,
    ),
    displaySmall: GoogleFonts.roboto(
      fontSize: 20.sp,
      fontWeight: FontWeight.w600,
      color: CustomColors.lightText,
    ),
    headlineMedium: GoogleFonts.roboto(
      fontSize: 18.sp,
      fontWeight: FontWeight.w600,
      color: CustomColors.lightText,
    ),
    bodyLarge: GoogleFonts.roboto(
      fontSize: 16.sp,
      color: CustomColors.lightText,
    ),
    bodyMedium: GoogleFonts.roboto(
      fontSize: 14.sp,
      color: CustomColors.lightText.withOpacity(0.87),
    ),
    bodySmall: GoogleFonts.roboto(
      fontSize: 12.sp,
      color: CustomColors.lightText.withOpacity(0.6),
    ),
    labelLarge: GoogleFonts.roboto(
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
  ),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: CustomColors.darkPrimary,
  colorScheme: ColorScheme.dark(
    primary: CustomColors.darkPrimary,
    secondary: CustomColors.darkSecondary,
  ),
  cardColor: CustomColors.darkBackground,
  splashColor: CustomColors.darkText,
  hintColor: Colors.white,
  inputDecorationTheme: InputDecorationTheme(
    fillColor: CustomColors.darkTextTertiary,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: BorderSide(color: CustomColors.darkPrimary),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: BorderSide(color: CustomColors.darkText),
    ),
  ),
  dropdownMenuTheme: DropdownMenuThemeData(
    inputDecorationTheme: InputDecorationTheme(
      fillColor: CustomColors.darkTextTertiary,
      hintStyle: GoogleFonts.rubik(
        color: CustomColors.darkText.withOpacity(0.6),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: CustomColors.darkText),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: CustomColors.darkBackground,
    selectedItemColor: CustomColors.darkPrimary,
    unselectedItemColor: CustomColors.darkText,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: CustomColors.darkBackground,
    titleTextStyle: GoogleFonts.rubik(
      fontSize: 20.sp,
      fontWeight: FontWeight.w600,
      color: CustomColors.darkText,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: CustomColors.darkPrimary,
      textStyle: const TextStyle(color: Colors.white),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
    ),
  ),
  scaffoldBackgroundColor: CustomColors.darkBackground,
  textTheme: TextTheme(
    displayLarge: GoogleFonts.roboto(
      fontSize: 32.sp,
      fontWeight: FontWeight.bold,
      color: CustomColors.darkText,
    ),
    displayMedium: GoogleFonts.roboto(
      fontSize: 24.sp,
      fontWeight: FontWeight.bold,
      color: CustomColors.darkText,
    ),
    displaySmall: GoogleFonts.roboto(
      fontSize: 20.sp,
      fontWeight: FontWeight.w600,
      color: CustomColors.darkText,
    ),
    headlineMedium: GoogleFonts.roboto(
      fontSize: 18.sp,
      fontWeight: FontWeight.w600,
      color: CustomColors.darkText,
    ),
    bodyLarge: GoogleFonts.roboto(
      fontSize: 16.sp,
      color: CustomColors.darkText,
    ),
    bodyMedium: GoogleFonts.roboto(
      fontSize: 14.sp,
      color: CustomColors.darkText,
    ),
    bodySmall: GoogleFonts.roboto(
      fontSize: 12.sp,
      color: CustomColors.darkText,
    ),
    labelLarge: GoogleFonts.roboto(
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
  ),
);
