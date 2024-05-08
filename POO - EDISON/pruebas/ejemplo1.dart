void main(List<String> args) {
  final Edison = new Persona("Edison", 25);
  Edison.caracteristicas();
}

class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad) {
    this.nombre = nombre;
    this.edad = edad;
  }

  void caracteristicas() {
    print("el nombre es $nombre");
    print("el nombre es $edad");
  }
}

class Empleado extends Persona {
  Empleado(String nombre, int edad) : super(nombre, edad);
  String cargo = "instruct";
  int sueldo = 10;

  void decirCargo() {
    print("soy $cargo");
    print("sueldo $sueldo");
  }
}
