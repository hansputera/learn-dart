import './matematika.dart' as mtk;

class Kelas {
  Kelas({
    required this.kelas
  });
  final int kelas;
  List<Siswa> anggota = [];

  void tambahSiswa(Siswa siswa) {
    if (siswa.kelas != kelas) {
      return;
    } else {
      return anggota.add(siswa);
    }
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