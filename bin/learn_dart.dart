import 'package:learn_dart/struktur_kelas.dart' as struktur;

void main(List<String> arguments) {
  var kelas = struktur.Kelas(kelas: 8);
  
  kelas.tambahSiswa(struktur.Siswa(nama: "Budi", kelas: 8));
  kelas.tambahSiswa(struktur.Siswa(nama: "Tono", kelas: 9));

  print("Total anggota di kelas ini ${kelas.anggota.length}");
}
