import 'dart:io';
import 'dart:math';

double _readDouble(String prompt) {
  while (true) {
    stdout.write(prompt);
    final input = stdin.readLineSync();
    final val = double.tryParse((input ?? '').replaceAll(',', '.'));
    if (val != null) return val;
    print('Input tidak valid. Masukkan angka yang benar.');
  }
}

int _readInt(String prompt) {
  while (true) {
    stdout.write(prompt);
    final input = stdin.readLineSync();
    final val = int.tryParse((input ?? '').trim());
    if (val != null) return val;
    print('Input tidak valid. Masukkan bilangan bulat.');
  }
}

void _clearScreen() {
  
  stdout.write('\x1B[2J\x1B[H');
}

void main() {
  while (true) {
    print('''\n=== KALKULATOR SEDERHANA ===
1) Penjumlahan (+)
2) Pengurangan (-)
3) Perkalian (*)
4) Pembagian (/)
0) Keluar
''');

    stdout.write('Pilih operasi [1-4]: ');
    final pilih = (stdin.readLineSync() ?? '').trim();

    if (pilih == '0') {
      print('Terima kasih! Program ditutup.');
      break;
    }

    try {
      switch (pilih) {
        case '1':
          {
            final a = _readDouble('Masukkan angka pertama: ');
            final b = _readDouble('Masukkan angka kedua  : ');
            print('Hasil: $a + $b = ${a + b}');
            break;
          }
        case '2':
          {
            final a = _readDouble('Masukkan angka pertama: ');
            final b = _readDouble('Masukkan angka kedua  : ');
            print('Hasil: $a - $b = ${a - b}');
            break;
          }
        case '3':
          {
            final a = _readDouble('Masukkan angka pertama: ');
            final b = _readDouble('Masukkan angka kedua  : ');
            print('Hasil: $a * $b = ${a * b}');
            break;
          }
        case '4':
          {
            final a = _readDouble('Masukkan angka pertama: ');
            final b = _readDouble('Masukkan angka kedua  : ');
            if (b == 0) {
              print('Error: pembagian dengan nol tidak diperbolehkan.');
            } else {
              print('Hasil: $a / $b = ${a / b}');
            }
            break;
          }
        default:
          print('Pilihan tidak dikenal. Silakan pilih 1–7.');
      }
    } catch (e) {
      print('Terjadi kesalahan: $e');
    }

    
    stdout.write('\n[L]anjut | [B]ersihkan layar | [K]eluar ? ');
    final next = (stdin.readLineSync() ?? '').toLowerCase().trim();
    if (next == 'k') {
      print('Terima kasih! Program ditutup.');
      break;
    } else if (next == 'b') {
      _clearScreen();
      
    }
    
  }
}