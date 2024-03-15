import 'dart:io';

void main() {
  print(" edad");
  int edad = int.parse(stdin.readLineSync().toString());
  if (edad < 4) {
    print("gratis");
  } else {
    if (edad > 4 && edad < 18) {
      print("valor= 5000");
    } else {
      print("10000");
    }
  }
}
