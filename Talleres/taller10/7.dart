import 'dart:io';

void main() {
  int contador = 1, suma = 0;
  double prom = 0;
  print("digite cuantos numeros quiere colocar");
  int numeros = int.parse(stdin.readLineSync().toString());
  while (contador <= numeros) {
    print("ingrese numero decimal");
    int dec = int.parse(stdin.readLineSync().toString());
    suma = suma + dec;
    contador = contador + 1;
  }
  prom = suma / numeros;
  print("el promedio de " + prom.toString());
}
