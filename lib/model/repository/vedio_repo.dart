import 'package:dio/dio.dart';

import '../../utils/app_const.dart';
import '../../utils/network_manger.dart';

class VideoRepo {
  final dio = Dio();

  Future<Response> getRequestVideoDetails() async {
    var response = await dio.get(NetworkManager.urlEndPinot,
        options:
            Options(headers: {'Authorization': 'Bearer  ${AppConst.token}'}));

    return response;
  }
}
