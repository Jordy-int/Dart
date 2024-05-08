import 'dart:ffi';

void main(List<String> args) {
  Empleado test = new Empleado("a", "a", 12345);
  test.horasExtras(9.5);
  test.info();
}

class Persona {
  String nombre = "";
  String edad = "";
  Persona(String nombre, String edad) {
    this.nombre = nombre;
    this.edad = edad;
  }
  void info() {
    print("nombre $nombre, edad $edad");
  }
}

class Empleado extends Persona {
  double salario = 0;
  Empleado(String nombre, String edad, double salario) : super(nombre, edad) {
    this.salario = salario;
  }
  void horasExtras(double horas) {
    if (horas > 8) {
      print(
          "Debe pagar la cantidad de ${horas - 8} de horas extras y la cantidad de ${(horas - 8) * 60} minutos extras");
    } else {
      print("No debe pagar horas o minutos extras");
    }
  }
}
