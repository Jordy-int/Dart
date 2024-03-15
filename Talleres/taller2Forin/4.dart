import 'dart:io';

void main(List<String> args) {
  var fecha = Map<String, String>();
  var separar = [];

  print("ingresa una fecha en el formato dd/mm/aaaa");
  String preguntarFecha = stdin.readLineSync().toString();

  //separar
  separar = preguntarFecha.split("");
  
  //añadir al diccionario
  fecha["Dia"] = "${separar[0]}${separar[1]}";
  fecha["Mes"] = "${separar[2]}${separar[3]}";
  fecha["Year"] = "${separar[4]}${separar[5]}${separar[6]}${separar[7]}";

  print("dia ${fecha["Dia"]}, mes ${fecha["Mes"]}, año ${fecha["Year"]}");
}
