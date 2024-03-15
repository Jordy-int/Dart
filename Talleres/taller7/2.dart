import 'dart:io';

void main() {
  print("digite su nombre");
  String nombres = stdin.readLineSync().toString();
  print("genero 1,femenino \N 2.masculino");
  int genero = int.parse(stdin.readLineSync().toString());
  String minuscula = nombres.toLowerCase();
  String l1 = minuscula.substring(0, 1);
  if ((genero == 1 && l1.compareTo('m')<0)|| (genero==2 && l1.compareTo('m')>0)) {
      print("grupo A\n");
    } else {
      print("grupo B\n");
    }
}
