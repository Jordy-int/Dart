import 'dart:io';

void main() {
  int precio;
  print("Elige (1)Pizza vegetariana, (2)Pizza normal ");
  int opcion = int.parse(stdin.readLineSync().toString());
  print("Agrega adicionales? (1)si o (2)no");
  int adicionales = int.parse(stdin.readLineSync().toString());
  if (opcion == 1 && adicionales == 1) {
    print("Ingredientes: (1)Pimiento, (2)Tofu, (3)Champinones ");
    int ingrediente = int.parse(stdin.readLineSync().toString());
    if (ingrediente == 1) {
      precio = 10000 + 1000;
      print("Pagar $precio");
    } else {
      if (ingrediente == 2) {
        precio = 2000 + 10000;
        print("Pagar $precio");
      } else {
        precio = 3000 + 10000;
        print("Pagar $precio");
      }
    }
  } else {
    if (opcion == 2 && adicionales == 1) {
      print("Ingredientes: (1)Pepperoni, (2)jamon, (3)salmon ");
      int ingrediente = int.parse(stdin.readLineSync().toString());
      if (ingrediente == 1) {
        precio = 15000 + 2000;
        print("Pagar $precio");
      } else {
        if (ingrediente == 2) {
          precio = 15000 + 3000;
          print("Pagar $precio");
        } else {
          precio = 15000 + 5000;
          print("Pagar $precio");
        }
      }
    } else {
      if (opcion == 1 && adicionales == 2) {
        print("pagar 10000");
      } else {
        print("pagar 15000");
      }
    }
  }
}
