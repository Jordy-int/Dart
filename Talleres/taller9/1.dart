import 'dart:io';

void main() {
  int total;
  print("numero uno: ");
  int primerNumero = int.parse(stdin.readLineSync().toString());
  print("numero dos: ");
  int segundoNumero = int.parse(stdin.readLineSync().toString());
  if (primerNumero < segundoNumero) {
    while (primerNumero < segundoNumero) {
      total = primerNumero % 2;
      if (total == 0) {
        print(primerNumero);
      }
      primerNumero = primerNumero + 1;
    }
  } else {
    while (segundoNumero < primerNumero) {
      total = segundoNumero % 2;
      if (total == 0) {
        print(segundoNumero);
      }
      segundoNumero = segundoNumero + 1;
    }
  }
}
