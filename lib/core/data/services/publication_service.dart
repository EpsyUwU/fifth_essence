import 'dart:ffi';

import 'package:fifth_essence/core/configurations/api_client.dart';
import 'package:fifth_essence/core/data/models/request/publication_request.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/BaseResponse.dart';

class PublicationService {

  final ApiClient _apiClient = ApiClient();

  Future<BaseResponse> listPublications() async {
    try {
      final response = await _apiClient.get("/publications");
      if (response.statusCode! >= 400) {
        throw Exception('Error listando publicaciones: ${response.statusCode}');
      }
      return BaseResponse.fromJson(response.data);
    } catch (exception) {
      throw Exception('Error al listar publicaciones: $exception');
    }
  }

  Future<BaseResponse> findPublicationById() async {

    final shared = await SharedPreferences.getInstance();
    int? id = shared.getInt('id');

    try {
      final response = await _apiClient.get("/publications/$id");
      if (response.statusCode! >= 400) {
        throw Exception('Error al buscar publicación: ${response.statusCode}');
      }
      return BaseResponse.fromJson(response.data);
    } catch (exception) {
      throw Exception('Error al buscar publicación: $exception');
    }
  }

  Future<BaseResponse> createPublication(PublicationRequest request) async {
    try {
      final response = await _apiClient.post(
        "/publications",
        data: request.toJson(),
      );

      if (response.statusCode! >= 400) {
        throw Exception('Error al crear publicación: ${response.statusCode}');
      }

      return BaseResponse.fromJson(response.data);
    } catch (exception) {
      throw Exception('Error al crear publicación: $exception');
    }
  }
}