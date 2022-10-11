import 'package:learn_dart/looping.dart';
import 'package:test/test.dart';

void main() {
  test('iniPrimaKah(4) == false', () {
    expect(iniPrimaKah(4), false);
  });

  test('iniPrimaKah(3) == true', () {
    expect(iniPrimaKah(3), true);
  });
  test('faktorial(2) == 2', () {
    expect(faktorial(2), 2);
  });

  test('faktorial(4) == 24', () {
    expect(faktorial(4), 24);
  });

  test('faktorial(5) == 120', () {
    expect(faktorial(5), 120);
  });
}