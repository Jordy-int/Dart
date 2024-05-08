void main() {
  String clientesInfo =
      "nif;nombre;email;teléfono;descuento\n01234567L;Luis González;luisgonzalez@mail.com;656343576;12.5\n71476342J;Macarena Ramírez;macarena@mail.com;692839321;8\n63823376M;Juan José Martínez;juanjo@mail.com;664888233;5.2\n98376547F;Carmen Sánchez;carmen@mail.com;667677855;15.7";

  Map<String, Map<String, dynamic>> directorioClientes = {};

  List<String> lineas = clientesInfo.split('\n');

  print("lineas: $lineas ");
  print("\n lineas posicion 5 ${lineas[4]} \n ");

  List<String> identificadores = lineas[0].split(';');

  print(" identificadores: $identificadores");

  for (int i = 1; i < lineas.length; i++) {
    List<String> valores = lineas[i].split(';');

    print("valores $valores");

    Map<String, dynamic> clienteInfo = {};

    for (int j = 0; j < identificadores.length; j++) {
      clienteInfo[identificadores[j]] = valores[j];
    }

    directorioClientes[valores[0]] = clienteInfo;
  }

  print(directorioClientes);
}
