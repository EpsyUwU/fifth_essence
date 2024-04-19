import 'package:fifth_essence/core/data/models/request/user_request.dart';
import 'package:fifth_essence/core/data/models/user_auth_dto.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../configurations/api_client.dart';
import '../models/BaseResponse.dart';

class UserService {

  final ApiClient _apiClient = ApiClient();

  Future<BaseResponse> findById() async {

    final shared = await SharedPreferences.getInstance();
    int? id = shared.getInt('userId');

    final response = await _apiClient.get(
      "/user/$id",
    );

    if (response.statusCode! >= 400) {
      throw Exception('Error de autenticación: ${response.statusCode}');
    }

    return BaseResponse.fromJson(response.data);
  }

  Future<BaseResponse> authenticate(UserAuthDto request) async {
    try {
      final response = await _apiClient.post(
        "/application/access",
        data: request.toJson(),
      );

      if (response.statusCode! >= 400) {
        throw Exception('Error de autenticación: ${response.statusCode}');
      }

      print(response.headers['Authorization']!.first);

      BaseResponse baseResponse = BaseResponse.fromJson(response.data);

      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('jwt', response.headers['Authorization']!.first);

      return baseResponse;
    } catch (exception) {
      throw Exception('Error de autenticación: $exception');
    }
  }

  Future<BaseResponse> register(UserRequest request) async {

    await _apiClient.resetJwt();

    final response = await _apiClient.post(
      "/user",
      data: request.toJson(),
    );

    if (response.statusCode! >= 400) {
      throw Exception('Error de registro: ${response.statusCode}');
    }

    BaseResponse baseResponse = BaseResponse.fromJson(response.data);

    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('userId', (baseResponse.data as Map<String, dynamic>)['id']);

    return baseResponse;
  }

  Future<BaseResponse> update(UserRequest request) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int? id = prefs.getInt('userId');

    final response = await _apiClient.put(
      "/user/$id",
      data: request.toJson(),
    );

    if (response.statusCode! >= 400) {
      throw Exception('Error de registro: ${response.statusCode}');
    }

    BaseResponse baseResponse = BaseResponse.fromJson(response.data);
    return baseResponse;
  }
}