import 'dart:io';

import 'package:learn_dart/async_program.dart' as asyncProgram;
import 'package:test/test.dart';

void main() {
  test('helloStr function async program', () async {
    var helloHanif = await asyncProgram.helloStr("World");
    expect(helloHanif, "Hello World");
  });
}