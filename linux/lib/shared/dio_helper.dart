import 'dart:io';

import 'package:dio/dio.dart';

//https://api.themoviedb.org/
//3/discover/movie?
//api_key=2001486a0f63e9e4ef9c4da157ef37cd&page=9

//https://api.themoviedb.org/
//3/genre/movie/list?
//api_key=2001486a0f63e9e4ef9c4da157ef37cd
class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.themoviedb.org/',
        responseType: ResponseType.json,
        contentType: ContentType.json.toString(),
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    // dio.options.headers = {
    //   'Accept': 'application/json',
    //   //  'lang': 'en',
    //   'Authorization': 'Bearer $token',
    // };
    return await dio.get(
      url,
      queryParameters: query,
    );
  }
}
