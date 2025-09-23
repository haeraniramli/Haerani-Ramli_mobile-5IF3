import 'dart:io';

void main() {
  stdout.write("Masukkan Nilai ");
  int nilaiMahasiswa = int.parse(stdin.readLineSync()!);

  if (nilaiMahasiswa >= 90) {
    print("Lulus dengan Nilai A");
  } else if (nilaiMahasiswa >= 80) {
    print("B");
  } else if (nilaiMahasiswa >= 70) {
    print("AB");
  } else if (nilaiMahasiswa >= 60) {
    print("C");
  } else if (nilaiMahasiswa >= 50) {
    print("BC");
  } else {
    print("E");
  }
}