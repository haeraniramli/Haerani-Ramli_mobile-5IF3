import 'dart:io';

void main(List<String> args) {
  Map<String, dynamic> users = {'odde': 'ling', 'rani': 'lucu'};

  users.forEach((key, value) {
    stdout.write("Username : ");
    var username = stdin.readLineSync();

    stdout.write("pass : ");
    var password = stdin.readLineSync();

    if (username == key && password == value) {
      print("login berhasil");
      
      
    } else {
      print("gagal login");
    }
  });
}