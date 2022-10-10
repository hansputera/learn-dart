import './matematika.dart' as mtk;

class Kelas {
  List<Siswa> anggota = [];

  void tambahSiswa(Siswa siswa) {
    anggota.add(siswa);
  }
}

class Siswa {
  Siswa({
    required this.nama,
    required this.kelas
  });
  final int id = mtk.tentukanNilai(10, 5000);
  final String nama;
  final int kelas;
}