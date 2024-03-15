import 'dart:io';

void main() {
  int cont=0, n;
  print("digite un numero");
  int num1 = int.parse(stdin.readLineSync().toString());
  print("digite un numero");
  int num2 = int.parse(stdin.readLineSync().toString());
  print("digite un numero entre los dos anteriores");
  n = int.parse(stdin.readLineSync().toString());
  while ((n <= num2 && n >= num1) || (n <= num1 && n >= num2)) {
    cont++;
    print("digite un numero estre esos 2 numeros ");
    n = int.parse(stdin.readLineSync().toString());
  }
  print("Escribio $cont numeros");
}
