import 'dart:convert';

class Response {
  final bool? status;
  final dynamic data;
  final String? message;

  Response({
    this.status,
    this.data,
    this.message,
  });

  Response copyWith({
    bool? status,
    dynamic data,
    String? message,
  }) =>
      Response(
        status: status ?? this.status,
        data: data ?? this.data,
        message: message ?? this.message,
      );

  factory Response.fromJson(String str) => Response.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Response.fromMap(Map<String, dynamic> json) => Response(
        status: json["status"],
        data: json["data"],
        message: json["message"],
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "data": data,
        "message": message,
      };
}
