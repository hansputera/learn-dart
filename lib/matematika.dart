import 'dart:math' as math;

int plus(int a, int b) {
  return a+b;
}

int tentukanNilai(int min, int max) {
  return min + math.Random().nextInt(max - min);
}

int luasKubus(int panjang) {
  return panjang*panjang;
}

int volumeKubus(int panjang) {
  return panjang*panjang*panjang;
}

int luasLingkaranJari(int jari) {
  return (math.pi*(jari*jari)).round();
}

int luasLingkaranDiameter(int diameter) {
  return ((1/4)*math.pi*(diameter*diameter)).round();
}