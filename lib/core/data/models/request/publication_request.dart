import 'dart:ffi';

class PublicationRequest {

  late Long authorId;
  late String title;
  late String body;

  toJson() {
    return {
      "authorId": authorId,
      "title": title,
      "body": body
    };
  }
}