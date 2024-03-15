import 'dart:io';

void main() {
  dynamic total;
  int servicio, horas;


  print("Servicio de nineras (1)basico , (2)Premium , (3)Gold ");
  servicio = int.parse(stdin.readLineSync().toString());
  print("horas");
  horas = int.parse(stdin.readLineSync().toString());
  print("nombre de ninera");
  String n = stdin.readLineSync().toString();


  if (servicio == 1) {
    if (horas > 10) {

      total = (((horas - 10) * 25000) + (10 * 20000));
      print("Ninera " + n);
      print("servicio Basico, horas: " + horas.toString());
      print("horas, tiene que pagar " + total.toString());


    } else {

      total = horas * 20000;
      print("Ninera " + n);
      print("servicio Basico, horas: " + horas.toString());
      print("horas, tiene que pagar " + total.toString());

    }
  } else {
    if (servicio == 2) {

      if (horas > 15) {

        total = (((horas - 15) * 40000) + (15 * 30000));
        print("Ninera " + n);
        print("servicio premium, horas: " + horas.toString());
        print("horas, tiene que pagar " + total.toString());

      } else {

        total = horas * 30000;
        print("Ninera " + n);
        print("servicio premium, horas: " + horas.toString());
        print("horas, tiene que pagar " + total.toString());

      }
    } else {
      if (servicio == 3) {
        if (horas > 20) {

          total = (((horas - 20) * 60000) + (20 * 50000));
          print("Ninera " + n);
          print("servicio gold, horas: " + horas.toString());
          print("horas, tiene que pagar " + total.toString());

        } else {

          total = horas * 50000;
          print("Ninera " + n);
          print("servicio gold, horas: " + horas.toString());
          print("horas, tiene que pagar " + total.toString());
          
        }
      }
    }
  }
}
