import 'dart:io';

void main(List<String> args) {
  //1 milla marina son 1852 metros
  print("conversor de millas marinas a metros, ingresar millas marinas");
  int millasMarinas = int.parse(stdin.readLineSync().toString());

  int conversorMetros = millasMarinas * 1852;

  print("los metros son: $conversorMetros");
}