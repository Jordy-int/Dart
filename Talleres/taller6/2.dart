import 'dart:io';

void main(){
  double total;

  print("Mes: ");
  int mes= int.parse(stdin.readLineSync().toString());

  print("Valor a pagar: ");
  double valor_a_Pagar= double.parse(stdin.readLineSync().toString());

  if(mes==1 || mes==2 || mes==3){

    total=valor_a_Pagar-((valor_a_Pagar*15)/100);
    print("total: $total");
    
  }else if(mes==4 || mes==5 || mes==6){

    total=valor_a_Pagar-((valor_a_Pagar*20)/100);
    print("total: $total");

  }else{

    print("total: $valor_a_Pagar");
  }
}