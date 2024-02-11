import 'dart:convert';

class WhatsappPayload {
  final String? from;
  final String? to;
  final String? body;

  WhatsappPayload({
    this.from,
    this.to,
    this.body,
  });

  WhatsappPayload copyWith({
    String? from,
    String? to,
    String? body,
  }) =>
      WhatsappPayload(
        from: from ?? this.from,
        to: to ?? this.to,
        body: body ?? this.body,
      );

  factory WhatsappPayload.fromJson(String str) =>
      WhatsappPayload.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WhatsappPayload.fromMap(Map<String, dynamic> json) => WhatsappPayload(
        from: json["from"],
        to: json["to"],
        body: json["body"],
      );

  Map<String, dynamic> toMap() => {
        "accountName": from,
        "to": to,
        "body": body,
      };
}
