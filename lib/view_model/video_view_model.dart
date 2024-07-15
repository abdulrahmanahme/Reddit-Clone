import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:reddit_clone/model/model/token_model.dart';
import 'package:reddit_clone/utils/get_it_manager.dart';
import '../model/model/video_model.dart';
import '../model/repository/token/token_repo.dart';
import '../model/repository/vedio_repo.dart';
import '../utils/app_const.dart';
import '../utils/network_manger.dart';

class VideoProvider extends ChangeNotifier {
  final TokenRepo tokenRepo = GetItManager.getIt.get<TokenRepo>();
  final VideoRepo videoRepo = GetItManager.getIt.get<VideoRepo>();

  TokenModel? tokenModel;
  VideoModel? videoModel;
  List<VideoModel> listVideModel = [];
  Future<void> getToken() async {
    try {
      var response = await tokenRepo.getTokenRequest();

      if (response.statusCode == 200) {
        tokenModel = TokenModel.fromJson(response.data);
        print('sssrrrrrrrrrrr ${tokenModel!.accessToken}');
        NetworkManager.setToken(tokenModel!.accessToken);
      }
    } catch (e) {}
    notifyListeners();
  }

  Future<List<VideoModel>> getVideoDetails() async {
    var res = await videoRepo.getRequestVideoDetails();
    if (res.statusCode == 200) {
      List<dynamic> data = res.data;
      listVideModel = data.map((json) => VideoModel.fromJson(json)).toList();
      notifyListeners();
    }
    return listVideModel;
  }
}
