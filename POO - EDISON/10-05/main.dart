void main(List<String> args) {}

//aprendiz tiene su propia calificación

//asignaturas con su respectiva nota - calificacion por cada asignatura

//moldes

abstract class asignaturas {
  String POO = "POO";
  String structuraDatos = "Estructuras Datos";
  String structuraDiscretas = "Estructuras Discretas";
  String asignatura = "";

  void asignatura_Instructor(int opcion) {
    switch (opcion) {
      case 1:
        asignatura = POO;
        break;
      case 2:
        asignatura = structuraDatos;
        break;
      case 3:
        asignatura = structuraDiscretas;
        break;
      default:
    }
  }
}

class Persona {
  String cedula = "";
  String nombre = "";
  String edad = "";
  String sexo = "";

  Persona(this.cedula, this.nombre, this.edad, this.sexo);
}

class Aprendiz extends Persona {
  Map<String, String> calificaciones = {"Matematicas": "5"};
  Aprendiz(
      String cedula, String nombre, String edad, String sexo, String materia)
      : super(cedula, nombre, edad, sexo) {}
}

class Instructor extends Persona {
  String materia = "";
  Instructor(
      String cedula, String nombre, String edad, String sexo, this.materia)
      : super(cedula, nombre, edad, sexo);
}

class Aula {
  String id = "";
  String capacidadMax = "";
  String asignatura = "";
  Aula(this.id, this.capacidadMax, this.asignatura);
}

class DarClase {
  
  String id_Aula = "";
  //cuantos aprendices pueden
  Map<String, String> asistencia = {}; //identificacion, booleano que confirma la ida o no del estudiante - Ademas, recibe de todos los estudiantes si va o no va, de la fecha
  String asignatura = "";
  String instructorDesignado = "";
  String fechaClase = "";
  bool siAsisteInstructor = false;
  DarClase(
    Instructor instructor,
    this.id_Aula,
    this.fechaClase,
  ) {
    //ejecutar una funcion en caso que pueda ir
    asignatura = instructor.materia;
    instructorDesignado = instructor.nombre;
  }
}

class Asistencia_Aprendiz {
  Map<String, bool> asistencia = {"23-2": true}; //fecha y el bool
  String cedula = "";

  Asistencia_Aprendiz(Aprendiz aprendiz) {
    cedula = aprendiz.cedula;
  }
}

class Asistencia_Instructor {
  Map<String, bool> asistencia = {"24-2": true , }; //fecha y el bool
  String cedula = "";

  Asistencia_Instructor(Instructor instructor) {
    cedula = instructor.cedula;
  }
}
