import 'dart:io';

void main(List<String> args) {
  //si los empleados es mayor a 50 la empresa dara subsidio equivalente al 20%
  int numeroEmpleado, horasTrabajadas, valorHora;

  print("cantidad de empleados");
  numeroEmpleado = int.parse(stdin.readLineSync().toString());
  print("cantidad de horasTrabajadas");
  horasTrabajadas = int.parse(stdin.readLineSync().toString());
  print("hora trabajada");
  valorHora = int.parse(stdin.readLineSync().toString());

  if (numeroEmpleado < 50) {
    print("nomina es de ${valorHora * horasTrabajadas}");
  } else {
    print(
        "nomina con transporte de es: ${((valorHora * horasTrabajadas) + ((valorHora * horasTrabajadas) * 0.20))}");
  }
}
