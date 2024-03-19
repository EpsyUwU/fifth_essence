import 'package:fifth_essence/core/data/models/BaseResponse.dart';
import 'package:fifth_essence/core/data/models/user_auth_dto.dart';
import 'package:fifth_essence/core/data/services/user_service.dart';

import '../models/request/user_request.dart';

class UserRepository {

  final UserService _service = UserService();

  UserRepository();

  Future<BaseResponse> authenticate(UserAuthDto request) async {
    return _service.authenticate(request);
  }

  Future<BaseResponse> register(UserRequest request) async {
    return _service.register(request);
  }

  Future<BaseResponse> findById() async {
    return _service.findById();
  }

}