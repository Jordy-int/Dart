void main(List<String> args) {
  cancion clase = new cancion("say amen", "panic at the disco");
  print(clase.dameTitulo("look ma i made it"));
  print(clase.dameAutor("rob zombie"));
  clase.ponTitulo("titulo");
  clase.ponAutor("autor");
}

class cancion {
  String titulo = "";
  String autor = "";
  cancion(String titulo, String autor) {
    this.titulo = titulo;
    this.autor = autor;
  }

  String dameTitulo(String titulo) {
    this.titulo = titulo;
    return this.titulo;
  }

  String dameAutor(String autor) {
    this.autor = autor;
    return this.autor;
  }

  void ponTitulo(String titulo) {
    this.titulo = titulo;
  }

  void ponAutor(String autor) {
    this.autor = autor;
  }
}
