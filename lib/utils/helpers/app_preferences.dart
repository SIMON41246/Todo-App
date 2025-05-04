import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  static const _userIdKey = 'user_id';

  static Future<String> getUserId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_userIdKey) ?? 'default_user_${DateTime.now().millisecondsSinceEpoch}';
  }

  static Future<void> setUserId(String userId) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_userIdKey, userId);
  }
}