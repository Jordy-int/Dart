void main(List<String> args) {}

class cafetera {
  int capacidadCafetera = 1000;
  int cantidadActual = 0;

  cafetera(int capacidadCafetera, int cantidad) {
    if (capacidadCafetera > this.capacidadCafetera) {
      print("Sobrepasa la cantidad de la cafetera");
    } else {
      cantidadActual = cantidad;
    }
  }

  void servir(int servirTaza) {
    if (servirTaza > capacidadCafetera) {
      print(
          "sirviendo con la capacidad que hay en la cafetera ${cantidadActual}");
      cantidadActual -= cantidadActual;
    } else {
      print("sirviendo... ${cantidadActual - servirTaza}");
    }
  }

  void vaciarCafetera() {
    print("vaciando cafetera... ");
    capacidadCafetera -= capacidadCafetera;
  }

  void agregarCafe(int cantidad) {
    if (cantidad > capacidadCafetera) {
      print("sobrepasa la cantidad de la cafetera");
    }
    cantidadActual += cantidad;
    print("has agregado $cantidad");
  }
}
