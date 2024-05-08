import 'dart:io';

void main(List<String> args) {
  /*construir codigo que haga: 
  crear una factura, pagar existente, 3 terminar y cada vez que haga una modificación: 
  muestre lo que debe y la cantidad pagada. hacerlo con un map
  */

  Map<int, int> facturas = {};
  int debe = 0, pagada = 0;
  var salir = true;

  do {
    print("crear factura(1), pagar existente (2), terminar(3)");
    int r = int.parse(stdin.readLineSync().toString());
    switch (r) {
      case 1:
        print("pin de la factura");
        int p = int.parse(stdin.readLineSync().toString());
        print("valor de la factura");
        int v = int.parse(stdin.readLineSync().toString());
        facturas[p] = v;
        debe -= v;
        break;
      case 2:
        print("pin de factura");
        int p = int.parse(stdin.readLineSync().toString());
        if (facturas.containsKey(p)) {
          debe += int.parse(facturas[p].toString());
          pagada += int.parse(facturas[p].toString());
          facturas.remove(p);

          print("debe la cantidad de: $debe y ha pagado: $pagada");

          print("cantidad de facturas que tiene: \n");
          facturas.forEach((key, value) {
            print("pin: $key , valor: $value");
          });
        } else {
          print("no encontrado");
        }
        break;
      case 3:
        salir = false;
        break;
      default:
        break;
    }
  } while (salir == true);
}
