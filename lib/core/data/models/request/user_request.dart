import 'package:fifth_essence/core/data/models/request/role_request.dart';

class UserRequest {

  late String username;
  late String phoneNumber;
  late String email;
  late String password;
  late Set<RoleRequest> roles;

  toJson() {
    return {
      "username": username,
      "phoneNumber": phoneNumber,
      "email": email,
      "password": password,
      "roles": roles.map((role) => role.toJson()).toList()
    };
  }
}