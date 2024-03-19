import 'dart:ffi';

class PublicationResponse {
  final Long id;
  final Long authorId;
  final String title;
  final String body;

  PublicationResponse({
    required this.id,
    required this.authorId,
    required this.title,
    required this.body,
  });

  factory PublicationResponse.fromJson(Map<String, dynamic> json) {
    return PublicationResponse(
      id: json['id'],
      authorId: json['authorId'],
      title: json['title'],
      body: json['body'],
    );
  }
}