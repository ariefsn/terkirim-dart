library terkirim;

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:terkirim/constant.dart';
import 'package:terkirim/entities/email.dart';
import 'package:terkirim/entities/response.dart';
import 'package:terkirim/entities/whatsapp.dart';

class Terkirim {
  final String _apiKey;
  String _baseUrl = defaultUrl;

  Terkirim({required String apiKey}) : _apiKey = apiKey;

  void setBaseUrl(String baseUrl) {
    _baseUrl = baseUrl;
  }

  String _getBaseUrl() {
    if (_baseUrl.isEmpty) {
      return defaultUrl;
    }

    return _baseUrl;
  }

  Future<Response> _send(Service service, Map<String, dynamic> payload) async {
    payload['apiKey'] = _apiKey;
    var url = Uri.parse(_getBaseUrl() + serviceUrlPaths[service]!);
    var res = await http.post(url,
        body: jsonEncode(payload),
        headers: {'Content-Type': 'application/json'});
    return Response.fromJson(utf8.decode(res.bodyBytes));
  }

  Future<Response> email(EmailPayload payload) async {
    return _send(Service.email, payload.toMap());
  }

  Future<Response> whatsapp(WhatsappPayload payload) async {
    return _send(Service.whatsapp, payload.toMap());
  }
}
