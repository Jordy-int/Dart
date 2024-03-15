import 'dart:io';
import 'dart:math';

void main(){
  int resp=0;
  Random random = new Random();
  int num1 = random.nextInt(101);
  int num2 = random.nextInt(101);
  int suma=num1+num2;   
  do{
    print("Digite la suma de $num1 y $num2");
    resp= int.parse(stdin.readLineSync().toString());
  }while(resp!=suma);         
}