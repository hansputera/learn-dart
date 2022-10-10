import 'package:learn_dart/matematika.dart' as matematika;
import 'package:test/test.dart';

void main() {
  test('matematika.luasKubus', () {
    expect(matematika.luasKubus(2), 4);
  });

  test('matematika.volumeKubus', () {
    expect(matematika.volumeKubus(4), 64);
  });

  test('matematika.luasLingkaranJari', () {
    expect(matematika.luasLingkaranJari(7), 154);
  });

  test('matematika.luasLingkaranDiameter', () {
    expect(matematika.luasLingkaranDiameter(14), 154);
  });
}