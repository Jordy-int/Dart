import 'dart:io';

void main(){
  double total;
  double porcentajeMujeres, porcentajeHombres;

  print("Cantidad de mujeres: ");
  double muj= double.parse(stdin.readLineSync().toString());
  print("Cantidad de hombres: ");
  double hom= double.parse(stdin.readLineSync().toString());

  total=muj+hom;

  porcentajeMujeres=(muj*100)/total;
  porcentajeHombres=(hom*100)/total;
  
  if(porcentajeMujeres>porcentajeHombres){
    print("Mayor cantidad de mujeres $porcentajeMujeres");
  }else if(porcentajeHombres>porcentajeMujeres){
    print("Mayor cantidad de hombres $porcentajeHombres");
  }else{
    print("Es la misma cantidad");
  }
}