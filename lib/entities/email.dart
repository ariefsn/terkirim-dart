import 'dart:convert';

class EmailFrom {
  final String? username;
  final String? name;

  EmailFrom({
    this.username,
    this.name,
  });

  EmailFrom copyWith({
    String? username,
    String? name,
  }) =>
      EmailFrom(
        username: username ?? this.username,
        name: name ?? this.name,
      );

  factory EmailFrom.fromJson(String str) => EmailFrom.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EmailFrom.fromMap(Map<String, dynamic> json) => EmailFrom(
        username: json["username"],
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "username": username,
        "name": name,
      };
}

class EmailAccount {
  final String? email;
  final String? name;

  EmailAccount({
    this.email,
    this.name,
  });

  EmailAccount copyWith({
    String? email,
    String? name,
  }) =>
      EmailAccount(
        email: email ?? this.email,
        name: name ?? this.name,
      );

  factory EmailAccount.fromJson(String str) =>
      EmailAccount.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EmailAccount.fromMap(Map<String, dynamic> json) => EmailAccount(
        email: json["email"],
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "email": email,
        "name": name,
      };
}

class EmailAttachment {
  final String? content;
  final String? filename;
  final String? type;
  final String? disposition;
  final String? contentId;

  EmailAttachment({
    this.content,
    this.filename,
    this.type,
    this.disposition,
    this.contentId,
  });

  EmailAttachment copyWith({
    String? content,
    String? filename,
    String? type,
    String? disposition,
    String? contentId,
  }) =>
      EmailAttachment(
        content: content ?? this.content,
        filename: filename ?? this.filename,
        type: type ?? this.type,
        disposition: disposition ?? this.disposition,
        contentId: contentId ?? this.contentId,
      );

  factory EmailAttachment.fromJson(String str) =>
      EmailAttachment.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EmailAttachment.fromMap(Map<String, dynamic> json) => EmailAttachment(
        content: json["content"],
        filename: json["filename"],
        type: json["type"],
        disposition: json["disposition"],
        contentId: json["contentId"],
      );

  Map<String, dynamic> toMap() => {
        "content": content,
        "filename": filename,
        "type": type,
        "disposition": disposition,
        "contentId": contentId,
      };
}

class EmailPayload {
  final EmailFrom? from;
  final List<EmailAccount>? to;
  final List<EmailAccount>? cc;
  final List<EmailAccount>? bcc;
  final String? subject;
  final String? body;
  final Map<String, dynamic>? headers;
  final String? text;
  final List<EmailAttachment>? attachments;
  final String? category;
  final Map<String, dynamic>? variables;
  final Map<String, dynamic>? tags;

  EmailPayload({
    this.from,
    this.to,
    this.cc,
    this.bcc,
    this.subject,
    this.body,
    this.headers,
    this.text,
    this.attachments,
    this.category,
    this.variables,
    this.tags,
  });

  EmailPayload copyWith({
    EmailFrom? from,
    List<EmailAccount>? to,
    List<EmailAccount>? cc,
    List<EmailAccount>? bcc,
    String? subject,
    String? body,
    Map<String, dynamic>? headers,
    String? text,
    List<EmailAttachment>? attachments,
    String? category,
    Map<String, dynamic>? variables,
    Map<String, dynamic>? tags,
  }) =>
      EmailPayload(
        from: from ?? this.from,
        to: to ?? this.to,
        cc: cc ?? this.cc,
        bcc: bcc ?? this.bcc,
        subject: subject ?? this.subject,
        body: body ?? this.body,
        headers: headers ?? this.headers,
        text: text ?? this.text,
        attachments: attachments ?? this.attachments,
        category: category ?? this.category,
        variables: variables ?? this.variables,
        tags: tags ?? this.tags,
      );

  factory EmailPayload.fromJson(String str) =>
      EmailPayload.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EmailPayload.fromMap(Map<String, dynamic> json) => EmailPayload(
        from: json["from"] == null ? null : EmailFrom.fromMap(json["from"]),
        to: json["to"] == null
            ? []
            : List<EmailAccount>.from(json["to"]!.map((x) => x)),
        cc: json["cc"] == null
            ? []
            : List<EmailAccount>.from(json["cc"]!.map((x) => x)),
        bcc: json["bcc"] == null
            ? []
            : List<EmailAccount>.from(json["bcc"]!.map((x) => x)),
        subject: json["subject"],
        body: json["body"],
        headers: json["headers"] == null
            ? null
            : Map<String, dynamic>.from(json["headers"]),
        text: json["text"],
        attachments: json["attachments"] == null
            ? []
            : List<EmailAttachment>.from(json["attachments"]!.map((x) => x)),
        category: json["category"],
        variables: json["variables"] == null
            ? null
            : Map<String, dynamic>.from(json["variables"]),
        tags: json["tags"] == null
            ? null
            : Map<String, dynamic>.from(json["tags"]),
      );

  Map<String, dynamic> toMap() => {
        "from": from?.toMap(),
        "to": to == null ? [] : List<Map>.from(to!.map((x) => x.toMap())),
        "cc": cc == null ? [] : List<Map>.from(cc!.map((x) => x.toMap())),
        "bcc": bcc == null ? [] : List<Map>.from(bcc!.map((x) => x.toMap())),
        "subject": subject,
        "body": body,
        "headers": headers ?? {},
        "text": text ?? '',
        "attachments": attachments == null
            ? []
            : List<Map>.from(attachments!.map((x) => x.toMap())),
        "category": category,
        "variables": variables ?? {},
        "tags": tags ?? {},
      };
}
