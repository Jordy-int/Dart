void main(List<String> args) {
  var lista = ["Matematicas", "Fisica", "Quimica", "Historia", "Lengua"];
  Map<String, String> mapa = {};
  List<String> lista2 = ["1","3","4","2"];

  String test =
      lista2.firstWhere((element) => element == "2", orElse: () => "-1");
  print(test);

  lista.forEach((element) => print("Yo estudio: $element"));
}
