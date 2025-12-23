# Tipe Data pada Dart

Dart adalah bahasa yang diketik secara statis. Namun, dengan inferensi tipe, sebagian besar anotasi tipe bersifat opsional.

Dalam Dart, semua variabel merujuk pada *objek*. Setiap objek adalah instance dari sebuah *kelas*. Bahkan `null` adalah objek. Semua objek mewarisi dari kelas `Object`.

Tipe data bawaan yang paling umum adalah:

-   **Numbers**: `int`, `double`
-   **Strings**: `String`
-   **Booleans**: `bool`
-   **Lists**: `List` (juga dikenal sebagai array)
-   **Sets**: `Set`
-   **Maps**: `Map`
-   **Runes dan Grapheme clusters**: `Runes` (untuk mengekspos Unicode code points dari sebuah string)
-   **Symbols**: `Symbol`

Tipe khusus lainnya termasuk: `Object`, `Enum`, `Future`, `Stream`, dan `null`.

---

## Numbers

Dart memiliki dua jenis tipe data numerik:

### `int`

Integer adalah bilangan bulat yang tidak lebih besar dari 64 bit, tergantung pada platform. Pada platform native, nilainya bisa dari -2^63 hingga 2^63 - 1. Di web (saat dikompilasi ke JavaScript), nilainya adalah dari -2^53 hingga 2^53 - 1.

```dart
int age = 25;
int hexValue = 0xFF; // Notasi heksadesimal
int bigInt = 9007199254740991;
```

### `double`

`double` adalah angka floating-point presisi ganda 64-bit, sesuai dengan standar IEEE 754.

```dart
double price = 19.99;
double exponential = 1.2e3; // 1.2 * 10^3 = 1200.0
```

`int` dan `double` keduanya adalah subtipe dari `num`.

---

## Strings

Tipe `String` pada Dart merepresentasikan urutan karakter UTF-16. Anda dapat menggunakan tanda kutip tunggal (`'`) atau ganda (`"`) untuk membuat string.

```dart
String singleQuote = 'Hello, Dart!';
String doubleQuote = "Hello, World!";
```

Anda dapat menyematkan nilai ekspresi di dalam string menggunakan interpolasi string `${expression}`. Jika ekspresi adalah identifier sederhana, Anda bisa menggunakan `$identifier`.

```dart
String name = 'Eri';
String greeting = 'Halo, nama saya $name.';
String calculation = '2 + 2 = ${2 + 2}';

print(greeting); // Output: Halo, nama saya Eri.
print(calculation); // Output: 2 + 2 = 4
```

String multi-baris dapat dibuat menggunakan tiga tanda kutip tunggal atau ganda.

```dart
String multiLine = """
Ini adalah string
yang membentang di beberapa
baris.
""";
```

---

## Booleans

Untuk merepresentasikan nilai boolean, Dart memiliki tipe `bool`. Hanya ada dua objek dengan tipe `bool`: literal `true` dan `false`.

```dart
bool isDartFun = true;
bool isLearning = false;
```

Dart menggunakan pemeriksaan tipe yang kuat, artinya Anda tidak bisa menggunakan nilai seperti `1` atau `0` untuk mewakili `true` atau `false`.

---

## Lists

`List` adalah kumpulan objek yang terurut. Ini setara dengan array di bahasa lain.

```dart
// List literal
List<String> fruits = ['Apel', 'Pisang', 'Jeruk'];

// Mengakses elemen berdasarkan indeks (dimulai dari 0)
print(fruits[0]); // Output: Apel

// Mengubah elemen
fruits[1] = 'Anggur';

// Menambahkan elemen
fruits.add('Mangga');

// Panjang list
print(fruits.length); // Output: 4
```

---

## Sets

`Set` adalah kumpulan objek unik yang tidak terurut.

```dart
// Set literal
Set<String> languages = {'Dart', 'Java', 'Python'};

// Menambahkan elemen
languages.add('Dart'); // Tidak akan ditambahkan karena sudah ada
languages.add('Go');

print(languages); // Output bisa berbeda urutannya, cth: {Dart, Java, Python, Go}
```

---

## Maps

`Map` adalah objek yang mengasosiasikan kunci (keys) dan nilai (values). Kunci dan nilai bisa bertipe apa saja. Setiap kunci harus unik.

```dart
// Map literal
Map<String, String> capitals = {
  'Indonesia': 'Jakarta',
  'Japan': 'Tokyo',
  'USA': 'Washington D.C.'
};

// Mengakses nilai berdasarkan kunci
print(capitals['Indonesia']); // Output: Jakarta

// Menambahkan pasangan kunci-nilai baru
capitals['Germany'] = 'Berlin';

// Kunci juga bisa berupa tipe lain
Map<int, String> errorCodes = {
  404: 'Not Found',
  500: 'Internal Server Error'
};
```

---

## `dynamic`

Jika Anda ingin sebuah variabel dapat menampung tipe data apa pun, Anda dapat mendeklarasikannya dengan tipe `dynamic`.

```dart
dynamic variable;

variable = 'Hello'; // Menjadi String
print(variable);

variable = 42; // Menjadi int
print(variable);

variable = true; // Menjadi bool
print(variable);
```

Menggunakan `dynamic` akan menonaktifkan beberapa pemeriksaan tipe statis pada variabel tersebut. Sebaiknya gunakan tipe spesifik jika memungkinkan.
