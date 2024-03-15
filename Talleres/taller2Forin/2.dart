import 'dart:io';

void main(List<String> args) {
  var persona = Map<String, String>();

  print("Nombre");
  String nombre = stdin.readLineSync().toString();

  print("Edad");
  String edad = stdin.readLineSync().toString();
  print("direccion");
  String direccion = stdin.readLineSync().toString();
  print("telefono");
  String telefono = stdin.readLineSync().toString();

  persona["Nombre"] = nombre;
  persona["Edad"] = edad;
  persona["Direccion"] = direccion;
  persona["Telefono"] = telefono;

  print("${persona["Nombre"]} tiene ${persona["Edad"]} años, vive en ${persona["Direccion"]} y su número de teléfono es ${persona["Telefono"]}");
}
