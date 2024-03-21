import 'package:fifth_essence/core/configurations/api_client.dart';

import '../models/BaseResponse.dart';

class StreamService {

  final ApiClient _apiClient = ApiClient();

  Future<BaseResponse> listStreams() async {
    try {
      final response = await _apiClient.get("/stream");
      if (response.statusCode! >= 400) {
        throw Exception('Error listando streams: ${response.statusCode}');
      }
      return BaseResponse.fromJson(response.data);
    } catch (exception) {
      throw Exception('Error al listar streams: $exception');
    }
  }

}