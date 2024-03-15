import 'dart:io';

void main(){
  double notaFinal;
  print("taller 1 ");
  double notaTaller1= double.parse(stdin.readLineSync().toString());

  print("taller 2 ");
  double notaTaller2= double.parse(stdin.readLineSync().toString());

  print("examen ");
  double examen= double.parse(stdin.readLineSync().toString());

  notaFinal=((notaTaller1*30)/100)+((notaTaller2*30)/100)+((examen*40)/100);
  print("final $notaFinal");
}