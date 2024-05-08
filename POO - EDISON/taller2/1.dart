import 'dart:js_util';

void main(List<String> args) {
  Factura factura = new Factura("a", "b");
  factura.imprimirFactura(12312);
}

class Precio {
  String emisor = "";
  String cliente = "";

  Precio(String emisor, String cliente) {
    this.emisor = emisor;
    this.cliente = cliente;
  }
  void imprimirFactura(int factura) {
    print("su factura es de $factura");
  }
}

class Factura extends Precio {
  Factura(String emisor, String cliente) : super(emisor, cliente) {}
}
