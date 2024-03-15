void main(List<String> args) {
  String mensaje = saludar("123", "mundo");
  print(mensaje);
}

String saludar(texto,nombre) {
  return "$texto,$nombre";
}