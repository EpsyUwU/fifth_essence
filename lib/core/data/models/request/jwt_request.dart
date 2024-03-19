class JwtRequest {

  late String refreshToken;

  toJson() {
    return {
      "refreshToken": refreshToken
    };
  }

}