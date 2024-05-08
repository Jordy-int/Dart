import 'dart:io';

void main(List<String> args) {
  var clientes = Map<String, Map<String, String>>();
  var clientesPreferentes = Map<String, Map<String, String>>();
  int opciones = 0;
  bool esPreferente = true;
  
  do {
    print(
        "acciones: \n 1 = añadir Cliente \n 2 = Eliminar Cliente \n 3 = Mostrar Cliente \n 4 = Listar todos los clientes \n 5 = Listar clientes preferentes \n 6 = Terminar \n ");
    opciones = int.parse(stdin.readLineSync().toString());
    switch (opciones) {
      case 1:
        print("NIF del cliente");
        String nif = stdin.readLineSync().toString();
        print("nombre del cliente");
        String nombre = stdin.readLineSync().toString();
        print("direccion del cliente");
        String direccion = stdin.readLineSync().toString();
        print("telefono del cliente");
        String telefono = stdin.readLineSync().toString();
        print("correo del cliente");
        String correo = stdin.readLineSync().toString();
        print("preferente del cliente, solo (Y) para si o (N) para no");
        String preferente = stdin.readLineSync().toString();
        if (preferente == "Y") {
          esPreferente = true;
          clientes[nif] = {
            "nombre": nombre,
            "direccion": direccion,
            "telefono": telefono,
            "correo": correo,
            "preferente": preferente
          };
          clientesPreferentes[nif] = {
            "nombre": nombre,
            "direccion": direccion,
            "telefono": telefono,
            "correo": correo,
            "preferente": preferente
          };
        } else {
          esPreferente = false;
          clientes[nif] = {
            "nombre": nombre,
            "direccion": direccion,
            "telefono": telefono,
            "correo": correo,
            "preferente": preferente
          };
        }

        break;
      case 2:
        print("ingresar nif");
        String nif = stdin.readLineSync().toString();
        clientes.remove(nif);
        clientesPreferentes.remove(nif);

        break;
      case 3:
        print("ingresar nif");
        String nif = stdin.readLineSync().toString();

        print(clientes[nif]);

        break;
      case 4:
        clientes.forEach((key, value) {
          print("NIF: $key");
          print("NOMBRE: ${value["nombre"]}");
          print("\n");
        });

        break;
      case 5:
          clientesPreferentes.forEach((key, value) {
          print("NIF: $key");
          print("NOMBRE: ${value["nombre"]}");
          print("\n");
        });
        
        break;
    }
    if (opciones == 6) {
      break;
    }
  } while (opciones != 6);
}
