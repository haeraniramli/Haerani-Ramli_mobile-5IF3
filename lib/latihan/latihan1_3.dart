import 'dart:io';

void main() {
  stdout.write('Masukkan Panjang: ');
  double? panjang = double.parse(stdin.readLineSync()!);

  stdout.write('Masukkan Lebar: ');
  double? lebar = double.parse(stdin.readLineSync()!);

  double Luas = panjang * lebar;
  double keliling = 2 * (panjang + lebar);

  print("=" * 10);
  print("panjang = $panjang");
  print("lebar = $lebar");
  print("=" * 10);
  print("Hasil Luas = $Luas");
  print("Hasil keliling = $keliling");
}