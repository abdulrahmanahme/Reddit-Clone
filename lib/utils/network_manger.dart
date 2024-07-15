import 'dart:convert';

import 'package:reddit_clone/model/source/local/shard_pre.dart';
import 'package:reddit_clone/utils/app_const.dart';
import 'package:reddit_clone/utils/get_it_manager.dart';

class NetworkManager {
  late SharedPrefManager prefs;
  static const baseUrl = 'https://oauth.reddit.com';
  static const token = 'https://www.reddit.com/api/v1/access_token';
  static const urlEndPinot = 'https://oauth.reddit.com/r/euro2024/comments/1e0ibu0';
  static const tokenEndPinot = 'https://www.reddit.com/api/v1/access_token';
 static    String basicAuth = 'Basic ' +
        base64Encode(utf8.encode('${AppConst.username}:${AppConst.password}'));
  static String getToken() {
    SharedPrefManager sharedPrefManager =
        GetItManager.getIt.get<SharedPrefManager>();
    String token =
        sharedPrefManager.preferences.getString(AppConst.PREF_TOKEN_KEY) ?? "";
    return token;
  }

  static setToken(String token) {
    SharedPrefManager sharedPrefManager =
        GetItManager.getIt.get<SharedPrefManager>();
    sharedPrefManager.preferences.setString(AppConst.PREF_TOKEN_KEY, token);
  }
}
