import 'dart:io';

void main(){
  int intentos=0, contra=1234;
  String usuario= "usu1";
  
  do{
    print("Usuario: ");
    String usuarioIntroducido= stdin.readLineSync().toString();
    print("Contraseña: ");
    int cont=int.parse(stdin.readLineSync().toString());
    if(usuarioIntroducido==usuario && contra==cont){
      print("BIENVENIDO");
      intentos=2;
    }else{
      intentos++;
    }
  }while(intentos<2);
  
}