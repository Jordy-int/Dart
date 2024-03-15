import 'dart:io';

void main() {
  int suma = 0, sumaOperacion = 0, nota = 1;
  print("cuantas notas va a ingresar");
  int notas = int.parse(stdin.readLineSync().toString());
  while (nota <= notas) {
    print("nota alumno");
    int nt = int.parse(stdin.readLineSync().toString());
    if (nt >= 7) {
      suma = suma + 1;
      nota = nota + 1;
    } else {
      sumaOperacion = sumaOperacion + 1;
      nota = nota + 1;
    }
  }
  print("mayores o iguales a 7: " + suma.toString());
  print("menores a 7: " + sumaOperacion.toString());
}
