import 'dart:io';

void main() {
  dynamic th, t, td;
  print("Nombre empleado: ");
  String nombre = (stdin.readLineSync().toString());
  print("Anos de antiguedad: ");
  int anos = int.parse(stdin.readLineSync().toString());
  print("Cantidad de horas trabajadas al mes: ");
  int ch = int.parse(stdin.readLineSync().toString());
  print("Valor horas: ");
  int vh = int.parse(stdin.readLineSync().toString());
  th = (vh * ch) + (anos * 30000);
  t = (th * 13) / 100;
  td = th - t;
  print("el empleado " + nombre);
  print("ha trabajado por " + anos.toString() + " anos");
  print("con un valor por horas de " + vh.toString());
  print("va a cobrar " + th.toString());
  print("con un descuento de " + t.toString());
  print("dando asi el valor neto de " + td.toString());
}
