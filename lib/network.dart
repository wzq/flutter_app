import 'dart:convert';
import 'package:dio/dio.dart';

class HttpUtil {
  var client = new Dio();

  Future<String> getResult(String url) async {
    Response response = await client
        .get(url);
    return json.encode(response.data);
  }

  Future<String> topicList() async{
    return getResult("https://news-at.zhihu.com/api/4/news/latest");
  }
}
