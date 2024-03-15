import 'dart:io';

void main() {
  dynamic total;
  int regalos = 0;
  print("cantidad de docenas\n");
  int docena = int.parse(stdin.readLineSync().toString());
  print("valor de docena\n");
  double v = double.parse(stdin.readLineSync().toString());
  if (docena > 3) {
    total = (docena * v) - (((docena * v) * 15) / 100);
    while (docena > 3) {
      regalos = regalos + 1;
      docena = docena - 3;
    }
    print("regalos $regalos");
    print("pagar $total");
  } else {
    total = (docena * v) - (((docena * v) * 10) / 100);
    print("pagar: $total");
  }
}
