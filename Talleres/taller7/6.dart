import 'dart:io';

void main() {
  print("(1)Candidato A ,(2)Candidato B , (3)Candidato C ");
  int candidato = int.parse(stdin.readLineSync().toString());
  if (candidato == 1) {
    print("usted ha votado por rojo");
  } else {
    if (candidato == 2) {
      print("usted ha votado por verde ");
    } else {
      if (candidato == 3) {
        print("usted ha votado por azul");
      } else {
        print("opcion erronea");
      }
    }
  }
}
