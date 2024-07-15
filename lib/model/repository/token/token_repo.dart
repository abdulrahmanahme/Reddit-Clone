import 'package:dio/dio.dart';
import '../../../utils/network_manger.dart';

class TokenRepo {
 final dio = Dio();
  Future<Response> getTokenRequest() async {
    
    var response = await dio.post(NetworkManager.tokenEndPinot,
        queryParameters: {
          "grant_type": "password",
          "username": "Standard_Yam_4408",
          "password": "123456789abdo"
        },
        options: Options(headers: {'authorization': NetworkManager.basicAuth}));
    return response;
  }

}
