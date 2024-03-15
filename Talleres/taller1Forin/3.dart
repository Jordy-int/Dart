import 'dart:io';

void main(List<String> args) {
  int contador = 0;
  var lista = ["Matematicas", "Fisica", "Quimica", "Historia", "Lengua"];
  var notas = [];

  for (var element in lista) {
    print("Que nota has sacado en: $element");
    notas.add(int.parse(stdin.readLineSync().toString()));
  }
  for (var element in lista) {
    print("materia: $element nota es ${notas[contador]}");
    contador++;
  }
}
