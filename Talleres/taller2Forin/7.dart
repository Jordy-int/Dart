import 'dart:io';

void main(List<String> args) {
  bool infinito = true;
  int numArticulo = 1;
  double total = 0;
  var canasta = Map<String, double>();

  do {
    print("Ingresar articulo");
    String articulo = stdin.readLineSync().toString();
    print("Ingresar precio");
    String precio = stdin.readLineSync().toString();
    if (articulo == "" && precio == "") {
      break;
    }
    canasta["${articulo}${numArticulo}"] = double.parse(precio) ;
  } while (infinito != false);

  print("Lista de la compra");
  canasta.forEach((key, value) {
    print("$key  $value");
    total += value;
  });
  print("\nTotal:  $total");
}
