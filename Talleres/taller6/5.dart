import 'dart:io';

void main(){
  num total;
  print("horas trabajadas: ");
  int horas= int.parse(stdin.readLineSync().toString());
  print("valor horas: ");
  double v = double.parse(stdin.readLineSync().toString());
  if(horas>40){
    total=((((v*50)/100)+v)*(horas-40))+(40*v);
    print("Total: $total");
  }else{
    total=horas*v;
    print("Total: $total");
  }
}