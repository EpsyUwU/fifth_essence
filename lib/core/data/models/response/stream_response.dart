import 'dart:ffi';

class StreamResponse {

  final Long id;
  final String streamData;

  StreamResponse({
    required this.id,
    required this.streamData,
  });

  factory StreamResponse.fromJson(Map<String, dynamic> json) {
    return StreamResponse(
      id: json['id'],
      streamData: json['streamData'],
    );
  }

}