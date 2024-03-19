class JwtResponse {
  final String token;
  final String refreshToken;

  JwtResponse({required this.token, required this.refreshToken});

  factory JwtResponse.fromJson(Map<String, dynamic> json) {
    return JwtResponse(
      token: json['token'],
      refreshToken: json['refreshToken'],
    );
  }
}