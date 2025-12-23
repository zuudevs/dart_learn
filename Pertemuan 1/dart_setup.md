# Panduan Instalasi Dart SDK di Windows

Selamat datang di panduan untuk menginstal Dart SDK di sistem operasi Windows. Ikuti langkah-langkah di bawah ini untuk memulai pengembangan dengan Dart.

## Langkah 1: Unduh Dart SDK

Pertama, Anda perlu mengunduh versi stabil terbaru dari Dart SDK.

1.  **Link Unduhan**: [Dart SDK untuk Windows (x64)](https://storage.googleapis.com/dart-archive/channels/stable/release/latest/sdk/dartsdk-windows-x64-release.zip)
    *Catatan: Link ini akan selalu mengarahkan ke versi stabil terbaru.*

2.  Setelah unduhan selesai, Anda akan mendapatkan file `.zip`.

## Langkah 2: Ekstrak SDK

1.  Buat sebuah folder baru di lokasi yang mudah diakses dan tidak akan Anda pindahkan. Lokasi yang disarankan adalah langsung di dalam drive Anda, misalnya `C:\dart-sdk`.
2.  Ekstrak seluruh isi file `.zip` yang telah diunduh ke dalam folder yang baru saja Anda buat. Struktur folder akan terlihat seperti ini:
    ```
    C:\dart-sdk\
    ├── bin\
    ├── include\
    ├── lib\
    └── ... (file dan folder lainnya)
    ```

## Langkah 3: Tambahkan Dart ke Environment Variables (PATH)

Langkah ini sangat penting agar Anda dapat menjalankan perintah `dart` dari mana saja melalui Command Prompt (CMD) atau terminal lainnya.

1.  Buka **File Explorer**, klik kanan pada **This PC** (atau **My Computer**), dan pilih **Properties**.
2.  Klik **Advanced system settings**.
3.  Pada jendela System Properties, klik tombol **Environment Variables...**.
4.  Di bagian **User variables**, pilih variabel `Path` lalu klik **Edit...**.
    *(Jika tidak ada, klik **New...** dan beri nama variabel `Path`)*.
5.  Klik **New** dan tambahkan path lengkap ke folder `bin` di dalam direktori SDK Anda. Contohnya:
    ```
    C:\dart-sdk\bin
    ```
6.  Klik **OK** pada semua jendela yang terbuka untuk menyimpan perubahan.

## Langkah 4: Verifikasi Instalasi

Untuk memastikan Dart SDK telah terinstal dengan benar, buka Command Prompt (CMD) baru dan jalankan perintah berikut:

```bash
dart --version
```

Jika instalasi berhasil, Anda akan melihat output yang mirip seperti ini (versi dapat bervariasi):

```
Dart SDK version: 3.4.3 (stable) (....) on "windows_x64"
```

## Langkah 5: Menjalankan Program Dart Pertama Anda

Sekarang mari kita coba menjalankan program sederhana.

1.  Buka teks editor (seperti Notepad, VS Code, dll.) dan buat file baru dengan nama `hello.dart`.
2.  Salin dan tempel kode berikut ke dalam file tersebut:
    ```dart
    void main() {
      print('Hello, Dart! Installation successful.');
    }
    ```
3.  Simpan file tersebut.
4.  Di Command Prompt, navigasikan ke direktori tempat Anda menyimpan `hello.dart` dan jalankan perintah:   
	```bash
	dart run hello.dart
	```

Anda akan melihat output:

```
Hello, Dart! Installation successful.
```

**Selamat! Anda telah berhasil menginstal Dart SDK dan menjalankan program pertama Anda.**
