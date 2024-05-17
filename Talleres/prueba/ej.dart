import 'dart:ffi';

void main(List<String> args) {
  List<int> lista = [20, 30, 4, 2, 1, 5, 6];
  Map<int, int> hola = {123: 1234};

  lista.add(80);
  print(lista);
  lista.remove(4);
  print(lista);
}
