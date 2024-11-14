import 'package:dio/dio.dart';
import '../model/productmodel.dart';

class productservice {
  static Dio dio = Dio();

  static Future<productmodel> getdata() async
  {
    var responce = await dio.get("https://student.valuxapps.com/api/home");
    return productmodel.fromjson(responce.data);
  }
}