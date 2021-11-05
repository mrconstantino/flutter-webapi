import 'dart:convert';

import 'package:bytebank/http/webclient.dart';
import 'package:bytebank/models/transaction.dart';
import 'package:http/http.dart';

const MESSAGES_URI =
    'https://gist.githubusercontent.com/mrconstantino/6d24f2f765d2fd5e73e9b64ead960e2a/raw/5ec84b94ced38ef8f5aaeb4487677222499c6a25/';

class I18NWebClient {
  final String _viewKey;

  I18NWebClient(this._viewKey);

  Future<Map<String, dynamic>> findAll() async {
    final Response response = await client.get("$MESSAGES_URI$_viewKey.json");
    final Map<String, dynamic> decodedJson = jsonDecode(response.body);
    return decodedJson;
  }
}
