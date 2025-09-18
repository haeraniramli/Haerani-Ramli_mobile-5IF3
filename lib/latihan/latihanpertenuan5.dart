import 'dart:io';

// Fungsi operasi
double penjumlahan(double a, double b) => a + b;
double pengurangan(double a, double b) => a - b;
double perkalian(double a, double b) => a * b;
double pembagian(double a, double b) {
  if (b == 0) {
    throw Exception("Error: Tidak bisa membagi dengan nol.");
  }
  return a / b;
}

void main() {
  while (true) {
    print("\n=== Kalkulator Sederhana ===");
    print("Pilih operasi:");
    print("1. Penjumlahan (+)");
    print("2. Pengurangan (-)");
    print("3. Perkalian (*)");
    print("4. Pembagian (/)");
    print("5. Keluar");
    stdout.write("Masukkan pilihan (1-5): ");
    String? pilihan = stdin.readLineSync();

    if (pilihan == '5') {
      print("Terima kasih, program selesai.");
      break;
    }

    stdout.write("Masukkan angka pertama: ");
    double? a = double.tryParse(stdin.readLineSync() ?? '');
    stdout.write("Masukkan angka kedua: ");
    double? b = double.tryParse(stdin.readLineSync() ?? '');

    if (a == null || b == null) {
      print("Input tidak valid. Silakan coba lagi.");
      continue;
    }

    try {
      double hasil;
      switch (pilihan) {
        case '1':
          hasil = penjumlahan(a, b);
          print("Hasil: $a + $b = $hasil");
          break;
        case '2':
          hasil = pengurangan(a, b);
          print("Hasil: $a - $b = $hasil");
          break;
        case '3':
          hasil = perkalian(a, b);
          print("Hasil: $a * $b = $hasil");
          break;
        case '4':
          hasil = pembagian(a, b);
          print("Hasil: $a / $b = $hasil");
          break;
        default:
          print("Pilihan tidak valid.");
      }
    } catch (e) {
      print(e);
    }
  }
}
