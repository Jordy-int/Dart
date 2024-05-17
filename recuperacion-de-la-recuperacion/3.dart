import 'dart:io';

void main(List<String> args) {
  bool salir = true;
  Map<String, String> estudiant = {};
  do {
    print(
        "que quieres hacer? 1.Guardar 2.mostrar 3.modificar 4.eliminar 5. Salir");
    int op = int.parse(stdin.readLineSync().toString());

    switch (op) {
      case 1:
        print("cedula del estudiante");
        String cedula = stdin.readLineSync().toString();
        print("ingresar nombre");
        String nombre = stdin.readLineSync().toString();

        estudiant[cedula] = nombre;

        break;
      case 2:
        print("Ingresar la cedula del estudiaante a mostrar ");
        String cedula = stdin.readLineSync().toString();

        if (estudiant.containsKey(cedula)) {
          estudiant.forEach((key, value) {
            if (key == cedula) {
              print("El estudiante se llama ${value} y tiene la cedula ${key}");
            }
          });
        } else {
          print("estudiante no encontrado");
        }
        break;
      case 3:
        print("Ingresar la cedula del estudiante a modificar ");
        String cedula = stdin.readLineSync().toString();

        if (estudiant.containsKey(cedula)) {
          print("ingresar el nuevo nombre del estudiante");
          String nuevoNombre = stdin.readLineSync().toString();

          estudiant[cedula] = nuevoNombre;
        } else {
          print("el estudiante no existe ");
        }
        break;
      case 4:
        print("ingresar la cedula del estudiante ");
        String cedula = stdin.readLineSync().toString();

        if (estudiant.containsKey(cedula)) {
          estudiant.remove(cedula);
          print("estudiante removido");
        } else {
          print("estudiante no encontrado");
        }
        break;

      case 5:
        salir = false;
        break;
      default:
    }
  } while (salir);
}
