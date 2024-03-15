import 'dart:io';

void main() {
  int salario;
  print("puntaje ");
  int puntaje = int.parse(stdin.readLineSync().toString());
  if (puntaje >= 60) {
    salario = 200000 * puntaje;
    print("sobresaliente, su salario es de $salario");
  } else {
    if (puntaje >= 40) {
      salario = 200000 * puntaje;
      print("aceptable, su salario es de $salario");
    } else {
      if (puntaje >= 20) {
        salario = 200000 * puntaje;
        print("regular, su salario es de $salario");
      } else {
        if(puntaje==0){
          print("inaceptable, tu salario es de 200000");
        }else{
          salario = 200000 * puntaje;
          print("inaceptable, tu salario es de $salario");
        }
      }
    }
  }
}
