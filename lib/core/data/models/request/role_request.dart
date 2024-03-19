class RoleRequest {
  late String name;

  RoleRequest({required this.name});

  toJson() {
    return {
      "name": name
    };
  }
}