import 'package:dio/dio.dart';
import 'dart:io';
import 'dart:async';
import 'dart:convert';


const String GET = "get";
const String POST = "post";

const String HOST = "https://your_host_url.com/";
const int CONNECT_TIMEOUT = 10000;
const int RECEIVE_TIMEOUT = 3000;
final ContentType CONTENT_TYPE = ContentType.json;

typedef ErrorCallback = void Function(int count, String msg);


class HttpUtil {
  factory HttpUtil() => _httpInstance();
  static HttpUtil _instance;
  Dio _dio;
  BaseOptions orgOption;

  static HttpUtil _httpInstance() {
    if (_instance == null) {
      _instance = HttpUtil._init();
    }
    return _instance;
  }

  HttpUtil._init() {
    orgOption = BaseOptions(
        contentType: CONTENT_TYPE.mimeType,
        connectTimeout: CONNECT_TIMEOUT,
        receiveTimeout: RECEIVE_TIMEOUT,
        baseUrl: HOST);
    _dio = new Dio(orgOption);
  }

  //拦截器添加
  addInterceptor(Interceptor interceptor) {
    if (null != _dio) {
      _dio.interceptors.add(interceptor);
    }
  }

  addInterceptors(List<Interceptor> interceptorList) {
    if (null != _dio) {
      _dio.interceptors.addAll(interceptorList);
    }
  }

  //post
  Future<dynamic> post (String path,postData) {
    return request(path, POST, postData);
  }

  //get
  Future<dynamic> get (String path) {
    return request(path, GET, null);
  }

  Future<dynamic> request(String path, String mode, postData) async {
    try {
      switch (mode) {
        case GET:
          var getResponse = await _dio.get(path);
          return new Future<dynamic>((){
            return getResponse.data;
          });
        case POST:
        //做一层json 转换
          var postResponse = await _dio.post<Map<String,dynamic>>(path, data: json.encode(postData));
          return new Future<dynamic>((){
            return postResponse.data;
          });
      }
    } on DioError catch (exception) {
      return new Future.error(new HttpIOException(exception.response.statusCode, exception.message));
    } catch (error) {
      return new Future.error(new HttpIOException(-2, error.toString()));
    }
    return new Future.error(new HttpIOException(-1, "not supported"));
  }
}

class HttpIOException implements Exception{

  int code;
  String message;
  HttpIOException(this.code,this.message);
}


