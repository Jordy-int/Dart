import 'dart:io';

void main(){
  int cont=0;
  do{
    print("introduzca la contraseña");
    cont = int.parse(stdin.readLineSync().toString());
  }while(cont!=1234);
  print("bienvenido");
}