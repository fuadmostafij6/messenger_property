
import 'package:shared_preferences/shared_preferences.dart';

import 'constace.dart';

class MyPrefs {
  SharedPreferences? preferences;

  static Future<void> setToken(String authcode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(Constance.authCode, authcode);
  }

  static Future<String> getToken() async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getString(Constance.authCode) ?? "";
  }
}
