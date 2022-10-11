// import 'package:learn_dart/struktur_kelas.dart' as struktur;

import 'package:learn_dart/http_io.dart';

Future<void> main(List<String> arguments) async {
  // var kelas = struktur.Kelas(kelas: 8);
  
  // kelas.tambahSiswa(struktur.Siswa(nama: "Budi", kelas: 8));
  // kelas.tambahSiswa(struktur.Siswa(nama: "Tono", kelas: 9));

  // print("Total anggota di kelas ini ${kelas.anggota.length}");

  var document = await postHastebin("Hello World!");
  if (document != null) {
    final String raw = await document.getRaw();
    print(raw);
  }
}
