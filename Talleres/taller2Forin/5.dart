void main(List<String> args) {
  int suma = 0;
  Map<String, String> curso = {
    "matematicas": "6",
    "fisica": "4",
    "quimica": "5"
  };

  curso.forEach((key, value) {
    int conversor = int.parse(value);
    suma += conversor;
    print("$key tiene $value creditos");
  });
  print("el total de creditos es de $suma");
}
