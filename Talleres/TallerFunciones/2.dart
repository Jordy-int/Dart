void main(List<String> args) {
  suma();
}

void suma() {
  int sumaImpares = 0;
  for (var i = 1; i <= 10; i++) {
    if (i % 2 != 0) {
      sumaImpares += i;
    }
  }

  print("la suma de los impares es: $sumaImpares");
}
