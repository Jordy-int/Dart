import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print("cateto 1");
  double cateto1 = double.parse(stdin.readLineSync().toString());
  print("cateto 2");
  double cateto2 = double.parse(stdin.readLineSync().toString());

  double hipotenusa = sqrt(double.parse(pow(cateto1, 2).toString()) +
      double.parse(pow(cateto2, 2).toString()));

  print("valor de la hipotenusa es: $hipotenusa");
}