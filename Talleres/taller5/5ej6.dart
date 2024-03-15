import 'dart:io';

void main(List<String> args) {
  print("ingresar contraseña");
  int pass = int.parse(stdin.readLineSync().toString());

  while (pass != 1234) {
    print("vuelve a intentar");
    pass = int.parse(stdin.readLineSync().toString());
  }
  print("Bienvenido");
}
