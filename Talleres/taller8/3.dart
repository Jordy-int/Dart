import 'dart:io';

void main() {
  double primerLado, segundoLado, tercerLado;
  print("lado 1: ");
  primerLado = double.parse(stdin.readLineSync().toString());
  print("lado 2: ");
  segundoLado = double.parse(stdin.readLineSync().toString());
  print("lado 3: ");
  tercerLado = double.parse(stdin.readLineSync().toString());
  if (primerLado == segundoLado && segundoLado == tercerLado) {
    print("triangulo equilatero");
  } else {
    if (primerLado == segundoLado ||
        primerLado == tercerLado ||
        segundoLado == tercerLado) {
      print("triangulo isoceles");
    } else {
      print("triangulo escaleno");
    }
  }
}
