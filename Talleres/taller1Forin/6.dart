import 'dart:io';

void main(List<String> args) {
  var lista = ["Matematicas", "Fisica", "Quimica", "Historia", "Lengua"];
  var nota = [];

  lista.forEach((element) {
    print("que nota has sacado en la materia $element, la nota para aprobar es minimo de 3 ");
    nota.add(int.parse(stdin.readLineSync().toString()));
  });

  for (var i = 0; i <= nota.length - 1; i++) {
    if (nota[i] < 3) {
      lista[i] = "";
    }
  }
  print("materia a ser repetidas son: \n");

  lista.forEach((element) {
    print(element);
  });
}
