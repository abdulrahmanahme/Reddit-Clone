import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefManager {
  late SharedPreferences preferences;
  Future init() async {
    preferences = await SharedPreferences.getInstance();
  }
  void clearPref() {
    preferences.clear();
  }

}
