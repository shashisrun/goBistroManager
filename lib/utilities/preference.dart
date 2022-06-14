import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper {

  static SharedPreferences _preferences = _preferences;

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setString(String key, String value) async =>
      await _preferences.setString(key, value);

  static String getString(String key) => _preferences.getString(key) ?? "N/A";

  static Future setBoolean(String key, bool value) async =>
      await _preferences.setBool(key, value);

  static bool getBoolean(String key) => _preferences.getBool(key) ?? false;

  static void clearPref() {
    _preferences.clear();
  }

}
