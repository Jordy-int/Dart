void main() {
  Cuenta_Bancaria prueba = new Cuenta_Bancaria("19823", 10000, 2);
  prueba.ingresar(2000);
  prueba.Mostrar();
  prueba.Retirar(3000);
  prueba.Mostrar();
}

//No hacer el de actualizar saldo

class Cuenta_Bancaria {
  /* Con String? le estas diciendo a dart 
  que esa variable la vas a declarar como nulo; de lo contrario
  te obligara a que la inicialices de manera inmediata*/

  String? numeroDeCuenta;
  int? saldo;
  int? interes;

  Cuenta_Bancaria(String numeroCuenta, int sueldo, int interes) {
    this.numeroDeCuenta = numeroCuenta;
    saldo = sueldo;
    this.interes = interes;
  }

  void ingresar(int cantidad) {
    saldo = saldo! + cantidad;
  }

  void Retirar(int retirar) {
    if (saldo != 0) {
      saldo = saldo! - retirar;
      int hasRetirado = saldo! - retirar;
      print("has retirado $hasRetirado ");
    }
  }

  void Mostrar() {
    print("tu número de cuenta es $numeroDeCuenta");
    print("tienes un saldo de $saldo");
    print("el interes es de $interes");
  }
}
