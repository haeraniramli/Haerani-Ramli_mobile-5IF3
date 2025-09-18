import 'dart:io';
void main() {
  int perkalian(int x, int y) {
    int result = x * y;
    return result;
  }

  stdout.write("Masukkan Nilai x : ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan Nilai y : ");
  int b = int.parse(stdin.readLineSync()!);

  print("hasil perkalian x dan y adalah ${perkalian(a, b)}");
