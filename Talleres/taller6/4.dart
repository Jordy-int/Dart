import 'dart:io';

void main(){
  print("numero 1");
  int primerNumero= int.parse(stdin.readLineSync().toString());
  print("numero 2");
  int segundoNumero= int.parse(stdin.readLineSync().toString());
  print("numero 3 ");
  int tercerNumero= int.parse(stdin.readLineSync().toString());
  if(primerNumero>segundoNumero && segundoNumero>tercerNumero){
    print("$tercerNumero-$segundoNumero-$primerNumero");
  }else
  if(segundoNumero>tercerNumero && tercerNumero>primerNumero){
    print("$primerNumero-$tercerNumero-$segundoNumero");
  }else
  if(tercerNumero>segundoNumero && segundoNumero>primerNumero){
    print("$primerNumero-$segundoNumero-$tercerNumero");
  }else
  if(segundoNumero>primerNumero && primerNumero>tercerNumero){
    print("$tercerNumero-$primerNumero-$segundoNumero");
  }else
  if(primerNumero>tercerNumero && tercerNumero>segundoNumero){
    print("$segundoNumero-$tercerNumero-$primerNumero");
  }else{
    print("$segundoNumero-$primerNumero-$tercerNumero");
  }
}