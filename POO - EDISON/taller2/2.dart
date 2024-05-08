import 'dart:indexed_db';

void main(List<String> args) {
  Programador test = new Programador("a", "a", "b");
  test.info();
}

class Empleado {
  String nombre = "";
  String edad = "";

  Empleado(String nombre, String edad) {
    this.nombre = nombre;
    this.edad = edad;
  }
  void info() {
    print("edad: $edad , nombre: $nombre");
  }
}

class Programador extends Empleado {
  String rol = "";
  Programador(String nombre, String edad, String rol) : super(nombre, edad) {
    this.rol = rol;
  }

  @override
  void info() {
    print("edad: $edad , nombre: $nombre y rol es $rol");
  }
}
