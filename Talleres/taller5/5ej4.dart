import 'dart:io';

void main(List<String> args) {
  int suma = 0, fin = 0;
  print("hasta que numero se hara la suma? ");
  fin = int.parse(stdin.readLineSync().toString());

  for (int i = 0; i <= fin; i++) {
    suma += i;
  }
  print("da un total de $suma");
}
