import 'dart:ffi';
import 'dart:io';

void main(List<String> args) {
  int opciones = 0;
  double cantidadPagada = 0;
  double cantidadDebe = 0;
  var facturas = Map<String, double>();

  


  do {
    print(
        "acciones: \n 1 = nueva factura \n 2 = pagar Existente \n 3 = terminar ");
    opciones = int.parse(stdin.readLineSync().toString());
    switch (opciones) {
      case 1:
        print("Introducir clave de factura");
        String clave = stdin.readLineSync().toString();

        print("Introducir valor de factura");
        double valor = double.parse(stdin.readLineSync().toString());

        facturas[clave] = valor;
        cantidadDebe -= valor;

        print("\n Debe: $cantidadDebe, Ha pagado: $cantidadPagada \n");
        break;
      case 2:
        print("ingresar clave");
        String clave = stdin.readLineSync().toString();

        double conversor = double.parse(facturas[clave].toString());
        cantidadPagada += conversor;
        cantidadDebe += conversor;
        facturas.remove(clave);
        print("\n Debe: $cantidadDebe, Ha pagado: $cantidadPagada \n");
        break;
    }
    if (opciones == 3) {
      break;
    }
  } while (opciones != 3);
}
