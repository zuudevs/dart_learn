import 'dart:io';

void main() {
  // `var` -> Dart akan secara otomatis menebak tipe datanya (type inference).
  var greeting = 'Halo Peserta!'; // Dart menebak ini adalah String
  print(greeting);

  // Deklarasi variabel dengan tipe data eksplisit.
  // Tipe Data: String (Teks)
  String nama = 'Eri';
  print('Nama saya: $nama'); // $ adalah cara untuk memasukkan variabel ke dalam String (interpolation)

  // Tipe Data: int (Bilangan Bulat)
  int umur = 20;
  print('Umur: $umur tahun');

  // Tipe Data: double (Bilangan Desimal)
  double ipk = 3.85;
  print('IPK: $ipk');

  // Tipe Data: bool (Boolean -> true atau false)
  bool isMahasiswa = true;
  print('Apakah seorang mahasiswa? $isMahasiswa');
  print('---' * 10);
}