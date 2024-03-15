import 'dart:io';

void main(List<String> args) {
  bool confirmacion = false;
  int aumentar = 0;
  var traduccion = [];
  var diccionarioTraductor = Map<String, String>();

  print("introduce palabras en ingles y su traduccion");
  do {
    print("ingles");
    String ingles = stdin.readLineSync().toString();
    print("español");
    String spain = stdin.readLineSync().toString();

    diccionarioTraductor[ingles] = spain;
    print("quieres ingresar otra palabra? (Y) (N)");
    String ingresar = stdin.readLineSync().toString();

    if (ingresar == "N") {
      confirmacion = true;
    }
  } while (confirmacion != true);

  print("ingresa una frase que será traducida\n");
  String frase = stdin.readLineSync().toString();

  frase.split(",");

  diccionarioTraductor.forEach((key, value) {
    for (var i = 0; i < traduccion.length - 1; i++) {
      if (key == traduccion[i]) {
        print("$value");
      }
    }
  });
}
