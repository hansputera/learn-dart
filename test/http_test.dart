import 'package:learn_dart/http_io.dart';
import 'package:test/test.dart';

void main() {
  String data = "Hello World!";
  Document? document;
  test('post data', () async {
    document = await postHastebin(data);
    expect(document.runtimeType, Document);

    expect(document?.key.runtimeType, String);
  });

  test('get raw', () async {
    final String? raw = await document?.getRaw();
    expect(raw, data);
  });
}