
class BaseResponse {
  final Object data;
  final String message;
  final bool success;
  final Object status;
  final int statusCode;

  BaseResponse({
    required this.data,
    required this.message,
    required this.success,
    required this.status,
    required this.statusCode,
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json) {
    return BaseResponse(
      data: json['data'],
      message: json['message'],
      success: json['success'],
      status: json['status'],
      statusCode: json['statusCode'],
    );
  }
}