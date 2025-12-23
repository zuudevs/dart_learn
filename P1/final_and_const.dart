void main() {
  // `final` -> Nilainya tidak bisa diubah setelah diinisialisasi pertama kali.
  // Nilainya bisa berasal dari sesuatu yang ditentukan saat runtime (misal, waktu saat ini).
  final String namaLengkap = 'Eri Kurniadi';
  // namaLengkap = 'Budi'; // Ini akan menyebabkan error jika uncomment.

  // `const` -> Harus sudah diketahui nilainya saat kode ditulis (compile-time constant).
  // Digunakan untuk nilai yang benar-benar tidak akan pernah berubah.
  const double pi = 3.14;
  print('Nama Lengkap: $namaLengkap');
  print('Nilai PI: $pi');
  print('---' * 10);
}