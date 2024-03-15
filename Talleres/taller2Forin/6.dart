import 'dart:io';

void main(List<String> args) {
  int llave = 1, contador = 1;
  var persona = Map<String, String>();
  print("no ingresar nada para terminar el proceso");
  do {
    print("nombre");
    String nombre = stdin.readLineSync().toString();
    print("edad");
    String edad = stdin.readLineSync().toString();
    print("sexo");
    String sexo = stdin.readLineSync().toString();
    print("telefono");
    String telefono = stdin.readLineSync().toString();
    print("email");
    String email = stdin.readLineSync().toString();

    persona["Nombre${contador}"] = nombre;
    persona["Edad${contador}"] = edad;
    persona["Sexo${contador}"] = sexo;
    persona["Telefono${contador}"] = telefono;
    persona["Email${contador}"] = email;

    contador++;

    print("contenido del diccionario: ");
    persona.forEach((key, value) {
      print("$key : $value");
    });

    if (nombre == "" &&
        edad == "" &&
        sexo == "" &&
        telefono == "" &&
        email == "") {
      break;
    }
  } while (llave != 0);
}
