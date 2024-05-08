void main(List<String> args) {}

class Libro {
  String? titulo;
  String? autor;
  String? ISBN;
  String? pgs;
  String? edicion;
  String? editorial;
  String? lugar;
  String? fecha_Edicion;
  Libro(String titulo, String autor, String ISBN, String pgs, String edicion,
      String editorial, String lugar, String fecha_Edicion) {
    this.titulo = titulo;
    this.autor = autor;
    this.ISBN = ISBN;
    this.pgs = pgs;
    this.edicion = edicion;
    this.editorial = editorial;
    this.lugar = lugar;
    this.fecha_Edicion = fecha_Edicion;
  }

  void imprimirLibro() {
    print("información del libro \n");
    print("titulo: $titulo");
    print("autor $autor");
    print("isbn $ISBN");
    print("paginas $pgs");
    print("edicion $edicion");
    print("editorial $editorial");
    print("lugar $lugar");
    print("fecha $fecha_Edicion");
  }
}
