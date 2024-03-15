import 'dart:io';
void main(){
  int num1, num2, suma=0;
  do{
    print("SUMAS");
    print("numero 1: ");
    num1 = int.parse(stdin.readLineSync().toString());
    print("numero 2: ");
    num2 = int.parse(stdin.readLineSync().toString());
    suma=num1+num2;
    print("suma: $suma");
  }while(num1!=0 && num2!=0);

}