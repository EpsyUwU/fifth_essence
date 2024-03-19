import 'dart:ffi';

import '../models/BaseResponse.dart';
import '../models/request/publication_request.dart';
import '../services/publication_service.dart';

class PublicationRepository {

  final PublicationService _service = PublicationService();

  PublicationRepository();

  Future<BaseResponse> listPublications() async {
    return _service.listPublications();
  }

  Future<BaseResponse> findPublicationById() async {
    return _service.findPublicationById();
  }

  Future<BaseResponse> createPublication(PublicationRequest request) async {
    return _service.createPublication(request);
  }
}