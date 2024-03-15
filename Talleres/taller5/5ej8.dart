import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  int suma = 0, adivinar = -1;

  int numeroAzar1 = Random().nextInt(99) + 1;
  int numeroAzar2 = Random().nextInt(99) + 1;

  suma = numeroAzar1 + numeroAzar2;

  while (adivinar != suma) {
    print("Adivina la suma de 2 numeros aleatorios");
    adivinar = int.parse(stdin.readLineSync().toString());
  }
  print("has adivinado!");
}
