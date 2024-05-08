void main() {
  Frescos productoFresco = new Frescos("a", 'a', "a", 'a');
  Refrigerados productoRefrigerado =
      new Refrigerados("b", 'b', 'b', "b", 'b', "b");
  Congelados_Aire congeladoAire =
      new Congelados_Aire("c", 'c', "c", 'c', "c", "c", "c", "c", "c");
  Congelados_Agua congeladoAgua =
      new Congelados_Agua("d", 'd', "d", 'd', "d", "d");
  Congelados_Nitrogeno congeladoNitrogeno =
      new Congelados_Nitrogeno("e", 'e', "e", 'e', "e", 'e', "e");

  productoRefrigerado.infoBasica();
  productoRefrigerado.infoDetallada();

  ///----------------------------------
  productoFresco.infoBasica();
  productoFresco.infoDetallada();

  ///----------------------------------
  congeladoAire.infoBasica();
  congeladoAire.infoDetallada();

  ///----------------------------------
  congeladoAgua.infoBasica();
  congeladoAgua.infoDetallada();

  ///----------------------------------
  congeladoNitrogeno.infoBasica();
  congeladoNitrogeno.infoDetallada();
}

class Productos {
  String fecha_Cad;
  String Lote;

  Productos(this.fecha_Cad, this.Lote);

  void infoBasica() {
    print(fecha_Cad);
    print(Lote);
  }

  void infoDetallada() {}
}

class Refrigerados extends Productos {
  String codigo;
  String envasado;
  String tempRecomend;
  String pais_Origen;

  Refrigerados(String fecha_Cad, String Lote, this.codigo, this.envasado,
      this.pais_Origen, this.tempRecomend)
      : super(fecha_Cad, Lote);

  @override
  void infoDetallada() {
    print(fecha_Cad);
    print(Lote);
    print(codigo);
    print(envasado);
    print(pais_Origen);
    print(tempRecomend);
  }
}

class Frescos extends Productos {
  String envasado;
  String pais_Origen;

  Frescos(String fecha_Cad, String Lote, this.envasado, this.pais_Origen)
      : super(fecha_Cad, Lote);

  @override
  void infoDetallada() {
    print(envasado);
    print(pais_Origen);
    print(fecha_Cad);
    print(Lote);
  }
}

class Congelados extends Productos {
  String envasado;
  String pais_Origen;
  String tempRecomend;

  Congelados(String fecha_Cad, String Lote, this.envasado, this.pais_Origen,
      this.tempRecomend)
      : super(fecha_Cad, Lote);

  @override
  void infoDetallada() {
    print(fecha_Cad);
    print(Lote);
    print(envasado);
    print(pais_Origen);
    print(tempRecomend);
  }
}

//"infoDetallada" es poco practica... pero al tener cada uno diferentes atributos... puede servir.

//a partir de aqui, los demás congelados heredan de "congelados"

class Congelados_Aire extends Congelados {
  String nitrogeno;
  String oxigeno;
  String carbono;
  String vaporAgua;

  Congelados_Aire(
      String fecha_Cad,
      String Lote,
      String envasado,
      String pais_Origen,
      String tempRecomend,
      this.nitrogeno,
      this.carbono,
      this.oxigeno,
      this.vaporAgua)
      : super(fecha_Cad, Lote, envasado, pais_Origen, tempRecomend);

  void infoDetallada() {
    super.infoDetallada();
    print(tempRecomend);
    print(nitrogeno);
    print(carbono);
    print(oxigeno);
    print(vaporAgua);
  }
}

class Congelados_Agua extends Congelados {
  String salporLitros;
  Congelados_Agua(String fecha_Cad, String Lote, String envasado,
      String pais_Origen, String tempRecomend, this.salporLitros)
      : super(fecha_Cad, Lote, envasado, pais_Origen, tempRecomend);

  void infoDetallada() {
    super.infoDetallada();
    print(salporLitros);
  }
}

class Congelados_Nitrogeno extends Congelados {
  String tipoCongelacion;
  String exposicionSgs;
  Congelados_Nitrogeno(
      String fecha_Cad,
      String Lote,
      String envasado,
      String pais_Origen,
      String tempRecomend,
      this.tipoCongelacion,
      this.exposicionSgs)
      : super(fecha_Cad, Lote, envasado, pais_Origen, tempRecomend);

  void infoDetallada() {
    super.infoDetallada();
    print(tipoCongelacion);
    print(exposicionSgs);
  }
}


