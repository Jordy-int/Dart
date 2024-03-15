import 'dart:io';

void main() {
  int suma = 0, sumaOperacion = 0, sueldo = 0, empleados = 1;
  print("ingresar cuantos empleados hay ");
  int n = int.parse(stdin.readLineSync().toString());
  while (empleados <= n) {
    print("sueldo del empleado ");
    int s = int.parse(stdin.readLineSync().toString());
    sueldo = sueldo + s;
    if (s >= 100 && s <= 300) {
      suma = suma + 1;
      empleados = empleados + 1;
    } else {
      if (s > 300) {
        sumaOperacion = sumaOperacion + 1;
        empleados = empleados + 1;
      }
    }
  }
  print("empleados entre los 100 y 300 " + suma.toString());
  print("empleados mas de 300 " + sumaOperacion.toString());
  print("importe que gasta la empresa" +
      sueldo.toString());
}
