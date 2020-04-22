import 'dart:io';

import 'package:dio/dio.dart';

class HttpService {
  Dio dio;

  HttpService() {
    this.dio = new Dio();
  }

  Future get(String url, {String dataKey = 'list'}) async {
    print(url);
    Response response = await dio.get(url);
    return await parseResult(response, dataKey);
  }

  Future post(String url, Map data, {String dataKey = 'result'}) async {
    print(url);
    var response = await dio.post(url, data: data);
    return await parseResult(response, dataKey);
  }

  //解析结果
  Future parseResult(Response response, String key) async {
    if (response.statusCode == HttpStatus.ok) {
      var data = await response.data[key];
      return data;
    } else {
      return null;
    }
  }
}
