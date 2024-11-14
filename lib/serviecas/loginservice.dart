import 'package:dio/dio.dart';

import '../model/loginsignupmodel.dart';



class Loginservices {
  static Dio dio = Dio();

  static Future<signuploginmodel> addData(String email, String password) async
  {
    Response response = await dio.post(
        "https://student.valuxapps.com/api/register",

        data: {
          "email": email,
          "password": password,
        }
    );
    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      print(response.data);
      return signuploginmodel.fromjson(response.data);
    }
    else {
      throw Exception("Server Error ");
    }
  }
}
