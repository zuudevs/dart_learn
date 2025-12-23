void main() {
  // Secara default, variabel di Dart tidak boleh null (non-nullable).
  // String namaTengah; // Error: Non-nullable variable 'namaTengah' must be assigned before it can be used.
  
  // Untuk membuat variabel bisa bernilai null, tambahkan tanda tanya `?`.
  String? hobi = null;
  print('Hobi awal: $hobi');
  hobi = 'Ngoding';
  print('Hobi sekarang: $hobi');

  // Cara menangani variabel nullable:
  // a. Pemeriksaan null secara eksplisit (cara paling aman)
  if (hobi != null) {
    print('Panjang karakter hobi: ${hobi.length}');
  }

  // b. `!` (Bang Operator) -> Memberitahu Dart, "Saya yakin 100% variabel ini tidak null".
  // Hati-hati, jika ternyata null, aplikasi akan crash!
  print('Panjang karakter hobi (dengan !): ${hobi!.length}');

  // c. `late` -> Berjanji pada Dart bahwa kita akan menginisialisasi variabel ini nanti sebelum digunakan.
  // Jika kita mencoba menggunakannya sebelum diinisialisasi, akan terjadi error.
  late String pekerjaan;
  // print(pekerjaan); // Error jika uncomment: Late variable 'pekerjaan' has not been initialized.
  pekerjaan = 'Developer';
  print('Pekerjaan: $pekerjaan');
  
  print('---' * 10);
  print('Materi Pertemuan 1 Selesai!');
}