import 'dart:ffi';
import 'dart:js_util';

void main(List<String> args) {
  Multimedia mp3 = new Multimedia("a", "a", "a", "a");
  Multimedia mp4 = new Multimedia("b", "b", "b", "b");
  Multimedia txv = new Multimedia("c", "c", "c", "c");
}

class Multimedia {
  String? titulo;
  String? autor;
  String? formato;
  String? duracion;
  Multimedia(String titulo, String autor, String formato, String duracion) {
    this.titulo = titulo;
    this.autor = autor;
    this.formato = formato;
    this.duracion = duracion;
  }
  void imrpimirInfo() {
    print("información del objeto");
    print("titulo $titulo");
    print("autor $autor");
    print("formato $formato");
    print("duracion $duracion");
  }

  bool? esIgual(Multimedia objeto) {
    if (equal(autor, objeto.autor) && equal(titulo, objeto.titulo)) {
      return true;
    } else {
      return false;
    }
  }
}
