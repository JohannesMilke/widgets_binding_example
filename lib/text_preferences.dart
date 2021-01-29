import 'package:shared_preferences/shared_preferences.dart';

class TextPreferences {
  static SharedPreferences _preferences;

  static const _keyText = 'text';

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setText(String text) async =>
      await _preferences.setString(_keyText, text);

  static String getText() => _preferences.getString(_keyText) ?? '';
}
