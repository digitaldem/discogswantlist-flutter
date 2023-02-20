import 'package:shared_preferences/shared_preferences.dart';

extension SharedPreferencesX on SharedPreferences {
  static late final SharedPreferences preferences;
  static bool _init = false;
  static Future init() async {
    if (_init) {
      return;
    }
    preferences = await SharedPreferences.getInstance();
    _init = true;
    return preferences;
  }

  Future<bool> setIntList(String key, List<int> value) {
    return setStringList(key, value.map((e) => e.toString()).toList());
  }

  List<int>? getIntList(String key) {
    return getStringList(key)?.map((e) => int.parse(e)).toList();
  }
}
