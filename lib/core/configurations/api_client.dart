import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiClient {
  static final ApiClient _singleton = ApiClient._internal();
  static final Dio _dio = Dio();

  static const String _baseUrl = 'http://192.168.18.82:8080/api/v1';

  factory ApiClient() {
    return _singleton;
  }

  ApiClient._internal() {
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        final jwt = prefs.getString('jwt');
        if (jwt != null) {
          options.headers['Authorization'] = 'Bearer $jwt';
        }
        return handler.next(options);
      },
    ));
  }

  Future<void> resetJwt() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('jwt');
  }

  Future<Response> get(String url, {Map<String, dynamic>? queryParameters}) async {
    return await _dio.get(_baseUrl + url, queryParameters: queryParameters);
  }

  Future<Response> post(String url, {Map<String, dynamic>? data}) async {
    return await _dio.post(_baseUrl + url, data: data);
  }

  Future<Response> put(String url, {Map<String, dynamic>? data}) async {
    return await _dio.put(_baseUrl + url, data: data);
  }

  Future<Response> delete(String url, {Map<String, dynamic>? data}) async {
    return await _dio.delete(_baseUrl + url, data: data);
  }
}