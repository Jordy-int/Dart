void main(List<String> args) {
  int primerValor = 1;
  int segundoValor = 2;
  print(
      "antes del intercambio, el valor del primer número es de $primerValor , el valor del segundo número es de $segundoValor");
  intercambio(primerValor, segundoValor);
}

void intercambio(int numero1, int numero2) {
  int auxiliar = 0;
  auxiliar = numero1;
  numero1 = numero2;
  numero2 = auxiliar;

  print(
      "valores despues del cambio: Primer número $numero1 , Segundo número $numero2");
}
