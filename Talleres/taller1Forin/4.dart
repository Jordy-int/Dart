import 'dart:io';

void main(List<String> args) {
  int numeroGanador = 0;
  var numeroSeparado = [];

  print("Ingresa el número ganador");
  numeroGanador = int.parse(stdin.readLineSync().toString());

  numeroSeparado = numeroGanador.toString().split('');
  numeroSeparado.sort();

  numeroSeparado.forEach((element) {
    print(element);
  });
}
