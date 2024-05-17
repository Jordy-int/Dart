import 'dart:collection';
import 'dart:ffi';
import 'dart:io';

void main(List<String> args) {
  Map<String, String> aprendices = {};
  Map<String, String> notasAprendices = {};
  List notas = [];
  double mayorNota = 0;
  double menorNota = 0;
  double comparativo = 0;

  bool salir = true;

  do {
    print(
        "que desea hacer? 1. agregar aprendiz, 2. consultar nota de aprendiz , 3.Mostrar mayor nota , 4. Mostrar menor nota , 5. Mostrar Promedio , 6. Aprobaron , 7. reprobaron, 8.salir");
    int op = int.parse(stdin.readLineSync().toString());
    switch (op) {
      case 1:
        print("numero de documento del aprendiz");
        String cedula = stdin.readLineSync().toString();

        print("nombre del aprendiz");
        String nombre = stdin.readLineSync().toString();

        print("nota del aprendiz");
        String nota = stdin.readLineSync().toString();

        aprendices[cedula] = nombre;
        notasAprendices[cedula] = nota;

        print("aprendiz agregado");
        break;
      case 2:
        print("ingresar cedula del aprendiz");
        String cedula = stdin.readLineSync().toString();
        bool existe = false;

        if (aprendices.containsKey(cedula)) {
          notasAprendices.forEach((key, value) {
            if (key == cedula) {
              print("la nota del aprendiz es de $value");
            }
          });
        } else {
          print("no existe");
        }

        break;
      case 3:
        mayorNota = double.parse(notasAprendices.entries.first.value);
        notasAprendices.forEach((key, value) {
          if (double.parse(value) > mayorNota) {
            mayorNota = double.parse(value);
          }
        });
        print("mayor nota es: $mayorNota");
        break;
      case 4:
        menorNota = double.parse(notasAprendices.entries.first.value);
        notasAprendices.forEach((key, value) {
          if (double.parse(value) < menorNota) {
            menorNota = double.parse(value);
          }
        });
        print("mayor nota es: $menorNota");
        break;
      case 5:

        //promedio

        double suma = 0;
        int cantidad = 0;
        notasAprendices.forEach((key, value) {
          suma += double.parse(value);
          cantidad++;
        });

        print("el promedio es ${suma / cantidad}");

        break;
      case 6:
        //aprobaron

        notasAprendices.forEach((key, value) {
          if (double.parse(value) > 2.9) {
            print("El estudiante con el nombre ${aprendices[key]} aprobo con $value");
          }
        });

        break;
      case 7:

      //desaprobaron

      notasAprendices.forEach((key, value) {
          if (double.parse(value) <= 2.9) {
            print("El estudiante con el nombre ${aprendices[key]}  desaprobo $value ");
          }
        });
        break;
      case 8:
        salir = false;
        print("terminando programa");
        break;
      default:
    }
  } while (salir);
}
