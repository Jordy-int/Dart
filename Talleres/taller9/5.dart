import 'dart:io';

void main() {
  int a = 0, b = 1, c = 0, i = 1;
  print("ingresar n");
  int n = int.parse(stdin.readLineSync().toString());
  while (i <= n) {
    print(a);
    c = a + b;
    a = b;
    b = c;
    i = i + 1;
  }
}
