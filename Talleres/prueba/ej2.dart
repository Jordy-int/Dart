import 'ej.dart';

void main(List<String> args) {
  void main(List<String> args) {
    String mensaje = saludar(texto: 'texto', nombre: 'hola');
    print(mensaje);
  }
}

String saludar({String? texto, String? nombre}) {
  return "$texto $nombre";
}

String saludarTest({String? texto, String? nombre}) => "$texto $nombre";
