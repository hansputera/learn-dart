import 'dart:async';
import 'dart:convert';
import 'dart:io' as io;

class Document {
  final String key;
  Document({
    required this.key,
  });

  Future<String> getRaw() async {
    var client = io.HttpClient();
    try {
      io.HttpClientRequest request = await client.get("hastebin.com", 443, "/$key");
      io.HttpClientResponse response = await request.close();

      final String output = await response.transform(utf8.decoder).join();
      return Future<String>.value(output);
    } catch (e) {
      print("Caught error: $e");
      return Future<String>.value(e.toString());
    } finally {
      client.close();
    }
  }

  Document.fromJson(Map<String, dynamic> json)
    : key = json['key'];
}

Future<Document?> postHastebin(String data) async {
  var client = io.HttpClient();
  try {
    io.HttpClientRequest request = await client.post("hastebin.com", 443, "/documents");
    request.write(data);

    io.HttpClientResponse response = await request.close();
    
    final String output = await response.transform(utf8.decoder).join();
    var document = Document.fromJson(jsonDecode(output));

    return Future.value(document);
  } catch (e) {
    print("Caught error: ${e.toString()}");
  } finally {
    client.close();
  }

  return null;
}
