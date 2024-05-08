import 'dart:io';

void main(List<String> args) {
  bool s = true;
  Map<String, Map<String, String>> cl = {};
  Map<String, Map<String, String>> clPreferente = {};

  //nif, nombre, dirección, telefono, correo, preferente

  do {
    print(
        "acciones: \n 1 = añadir Cliente \n 2 = Eliminar Cliente \n 3 = Mostrar Cliente \n 4 = Listar todos los clientes \n 5 = Listar clientes preferentes \n 6 = Terminar \n ");
    int op = int.parse(stdin.readLineSync().toString());
    switch (op) {
      case 1:
        print("nif");
        String nif = stdin.readLineSync().toString();
        print("nombre");
        String n = stdin.readLineSync().toString();
        print("dirección");
        String d = stdin.readLineSync().toString();
        print("telefono");
        String t = stdin.readLineSync().toString();
        print("correo");
        String c = stdin.readLineSync().toString();
        print("es preferente? (Y) Si (N) No ");
        String pre = stdin.readLineSync().toString();
        if (pre == "Y") {
          cl[nif] = {
            "nombre": n,
            "dirección": d,
            "telefono": t,
            "correo": c,
            "preferente": "si"
          };
          clPreferente[nif] = {
            "nombre": n,
            "dirección": d,
            "telefono": t,
            "correo": c,
            "preferente": "si"
          };
        } else {
          cl[nif] = {
            "nombre": n,
            "dirección": d,
            "telefono": t,
            "correo": c,
            "preferente": "si"
          };
        }

        print(cl);
        print(clPreferente);

        break;
      case 2:
        print("ingresar el nif del cliente");
        String ni = stdin.readLineSync().toString();
      
        cl.entries.firstWhere((element) => element.key == ni, orElse: () {
          print("no se ha encontrado");
        });

        break;
      case 3:
        print("ingresar nif del cliente a ver");
        String nif = stdin.readLineSync().toString();

        if (cl.containsKey(nif)) {
          print(cl[nif]);
        } else {
          print("no se ha encontrado");
        }
        break;
      case 4:
        cl.forEach((key, value) {
          print(key);
          value.forEach((key, value) {
            print("$key , $value");
          });
        });

        break;
      case 5:
        clPreferente.forEach((key, value) {
          print(key);
          value.forEach((key, value) {
            print("$key, $value");
          });
        });
        break;
      case 6:
        s = false;
        break;
      default:
    }
  } while (s);
}
