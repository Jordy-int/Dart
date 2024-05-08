class Moto {
  String marca;
  String color;

  Moto(this.marca, this.color) {
    this.marca = marca;
    this.color = color;
  }

  void caracteristicas() {
    print("la marca de mi moto es $marca");
    print("la marca de mi moto es $color");
  }
}

void main(List<String> args) {
  final mt09 = new Moto("waer", "adf");

  mt09.caracteristicas();

  final z1000 = new Moto("karg", "klserjg");
  z1000.caracteristicas();
}
