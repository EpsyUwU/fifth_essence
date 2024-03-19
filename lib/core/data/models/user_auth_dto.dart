class UserAuthDto {
  final String phoneNumber;
  final String password;

  UserAuthDto({
    required this.phoneNumber,
    required this.password,
  });

  toJson() {
    return {
      'phoneNumber': phoneNumber,
      'password': password,
    };
  }
}