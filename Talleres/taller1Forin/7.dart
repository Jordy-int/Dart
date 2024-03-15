void main(List<String> args) {
  int contador = 0;
  var abecedario = [
    "a ",
    "b",
    "c",
    "d",
    "e",
    "f",
    "g",
    "h",
    "i",
    "j",
    "k",
    "l",
    "m",
    "n",
    "o",
    "p",
    "q",
    "s",
    "t",
    "u",
    "v",
    "w",
    "x",
    "y",
    "x"
  ];
  var abecedarioFiltrado = [];

  abecedario.forEach((element) {
    if (contador % 3 != 0) {
      abecedarioFiltrado.add(element);
    }
    contador++;
  });
  
  abecedarioFiltrado.forEach((element) {
    print(element);
  });
}
