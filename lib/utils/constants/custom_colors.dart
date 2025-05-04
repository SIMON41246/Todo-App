import 'package:flutter/material.dart';

class CustomColors {
  CustomColors._();

  // Light Mode Colors
  static const Color lightBackground = Colors.white;
  static const Color lightPrimary = Colors.deepPurple;
  static const Color lightSecondary = Colors.deepOrangeAccent;
  static const Color lightText = Colors.black;
  static const Color lightTextSecondary = Colors.black87;
  static const Color lightTextTertiary = Colors.black54;
  static const Color lightTextHint = Color(0xFF616161); // Grey[700]
  static const Color lightBorder = Colors.black;
  static const Color lightSuccess = Colors.green;
  static const Color lightError = Colors.red;
  static const Color lightEdit = Colors.blue;
  static const Color lightShadow = Color(0x33000000); // Black with 20% opacity

  // Dark Mode Colors
  static const Color darkBackground = Color(0xFF121212);
  static const Color darkPrimary = Color(0xFFBB86FC); // Purple 200
  static const Color darkSecondary = Color(0xFFFF8A65); // DeepOrange 300
  static const Color darkText = Colors.white;
  static const Color darkTextSecondary = Color(0xFFE0E0E0); // Grey[300]
  static const Color darkTextTertiary = Color(0xFF9E9E9E); // Grey[500]
  static const Color darkTextHint = Color(0xFF757575); // Grey[600]
  static const Color darkBorder = Color(0xFF424242); // Grey[800]
  static const Color darkSuccess = Color(0xFF69F0AE); // GreenAccent[200]
  static const Color darkError = Color(0xFFFF5252); // RedAccent[200]
  static const Color darkEdit = Color(0xFF448AFF); // BlueAccent[200]
  static const Color darkShadow = Color(0x1AFFFFFF); // White with 10% opacity
}
