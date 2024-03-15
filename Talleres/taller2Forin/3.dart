import 'dart:io';

void main(List<String> args) {
  double operacion = 0;
  Map<String, String> fruta = {
    "Platano": "1.35",
    "Manzana": "0.80",
    "Pera": "0.85",
    "Naranja": "0.70"
  };

  print("Por favor ingresar una fruta");
  String preguntarFruta = stdin.readLineSync().toString();

  print("Por favor ingresar cantidad de kilos");
  double preguntarKilos = double.parse(stdin.readLineSync().toString());

  var verificacion =
      fruta.entries.any((element) => element.key == preguntarFruta);

  //Comprobamos si esta
  if (verificacion) {
    double casting = double.parse(fruta[preguntarFruta].toString());
    operacion = casting * preguntarKilos;
    
    print("El precio de ese número de kilos de fruta es de ${operacion}");
  } else {
    print("no se ha encontrado la fruta");
  }
}
