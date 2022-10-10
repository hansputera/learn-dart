import 'package:learn_dart/struktur_kelas.dart' as struktur;
import 'package:test/test.dart';

void main() {
  var kelas = struktur.Kelas(kelas: 5);

  test('kelas anggotanya ada 0', () {
    expect(kelas.anggota.length, 0);
  });

  test('tambah budi', () {
    kelas.tambahSiswa(struktur.Siswa(nama: "Budi", kelas: 5));
    expect(kelas.anggota[0].nama, "Budi");
  });

  test('anggotanya tetap 1 walau udah ditambah', () {
    kelas.tambahSiswa(struktur.Siswa(nama: "Tono", kelas: 2));
    expect(kelas.anggota.length, 1);
  });
}