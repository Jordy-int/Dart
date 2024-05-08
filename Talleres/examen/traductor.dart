import 'dart:io';

void main(List<String> args) {
  Map<String, String> palabrasIngles = {};
  List<String> palabrasEspa = [];

  bool salir = true;

  do {
    print(" opciones: \n 1. ingresar palabra 2. Salir  ");
    int opcion = int.parse(stdin.readLineSync().toString());
    switch (opcion) {
      case 1:
        print("\n ingresa la palabra en ingles");
        String english = stdin.readLineSync().toString();

        print("\n ingresar traducción en español");
        String s = stdin.readLineSync().toString();
        palabrasIngles[english] = s;
        break;
      case 2:
        salir = false;
        break;
      default:
    }
  } while (salir == true);

  print("introducir frase en ingles que será traducida");
  String f = stdin.readLineSync().toString();

  palabrasEspa = f.split(" ");

  /*for (var element in palabrasEspa) {
    if (palabrasIngles.containsKey(element)) {
      print(palabrasIngles[element]);
    } else {
      print(element);
    }
  }*/
}
