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
      io.HttpClientRequest request = await client.getUrl(Uri.parse("https://hastebin.com/raw/$key"));
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
    io.HttpClientRequest request = await client.postUrl(Uri.parse("https://hastebin.com/documents"));
    request.write(data);

    io.HttpClientResponse response = await request.close();
    if (response.statusCode != 200) {
      return null;
    }
    
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
