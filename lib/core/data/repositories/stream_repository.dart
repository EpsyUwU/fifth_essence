import '../models/BaseResponse.dart';
import '../services/stream_service.dart';

class StreamRepository {

  final StreamService _service = StreamService();

  StreamRepository();

  Future<BaseResponse> listStreams() async {
    return _service.listStreams();
  }

}