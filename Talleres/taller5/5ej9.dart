import 'dart:io';

void main(List<String> args) {
  double doble = 0, sumaMeses = 0;
  int cantidadMeses = 1;
  print("ingresa capital");
  double capital = double.parse(stdin.readLineSync().toString());
  doble = capital * 2;
  sumaMeses = capital;
  while (doble > sumaMeses) {
    sumaMeses += capital * 0.05;
    cantidadMeses++;
  }
  print("cantidad de meses que tomo en duplicarse fue $cantidadMeses y la cantidad es $sumaMeses");
}
