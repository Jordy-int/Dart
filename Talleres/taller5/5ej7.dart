import 'dart:io';

void main(List<String> args) {
  int suma = 0, num1 = 0, num2 = 0;
  print("ingresa el primer numero");
  num1 = int.parse(stdin.readLineSync().toString());

  print("ingresa el segundo numero");
  num2 = int.parse(stdin.readLineSync().toString());
  
  while (num1 != 0 && num2 != 0) {
    suma = suma + num2 + num1;
    print("ingresa el primer numero");
    num1 = int.parse(stdin.readLineSync().toString());
    print("ingresa el segundo numero");
    num2 = int.parse(stdin.readLineSync().toString());
  }
}
