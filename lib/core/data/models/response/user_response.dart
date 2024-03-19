class UserResponse {
  final String id;
  final String username;
  final String phoneNumber;
  final String email;
  final Set<String> roles;

  UserResponse({
    required this.id, 
    required this.username, 
    required this.phoneNumber, 
    required this.email,
    required this.roles
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) {
    return UserResponse(
      id: json['id'],
      username: json['name'],
      phoneNumber: json['email'],
      email: json['token'],
      roles: json['roles']
    );
  }
}