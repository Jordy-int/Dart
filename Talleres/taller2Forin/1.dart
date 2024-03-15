import 'dart:io';

void main(List<String> args) {
  Map<String, String> moneda = {"Euro": "€", "Dollar": "\$", "Yen": "¥"};
  print("Ingresa una moneda que será impresa");
  String buscar = stdin.readLineSync().toString();

  //Comprobamos si esta
  var verificacion = moneda.entries.any((element) => element.key == buscar);
  if (verificacion) {

    //Luego lo extraemos
    var imprimir = moneda.entries.firstWhere((element) => element.key == buscar);

    //Y por último lo imprimimos
    print(imprimir.value);

  } else {
    print("No se ha encontrado la moneda");
  }
}
