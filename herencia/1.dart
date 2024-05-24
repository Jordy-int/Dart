class Persona {
  String cedula;
  String nombres;
  int edad;
  String sexo;

  Persona(this.cedula, this.nombres, this.edad, this.sexo);
}

class Aprendiz extends Persona {
  double calificacion;
  int faltas;

  Aprendiz(String cedula, String nombres, int edad, String sexo, this.calificacion, this.faltas)
      : super(cedula, nombres, edad, sexo);
}

class Instructor extends Persona {
  String materiaAsignada;
  double disponibilidad;

  Instructor(String cedula, String nombres, int edad, String sexo, this.materiaAsignada, this.disponibilidad)
      : super(cedula, nombres, edad, sexo);
}

class Aula {
  int identificador;
  int maximoAprendices;
  String asignaturaDestinada;
  double porcentajeMinimoAsistencia;
  List<Aprendiz> aprendices;
  Instructor instructor;

  Aula(this.identificador, this.maximoAprendices, this.asignaturaDestinada, this.porcentajeMinimoAsistencia,
      this.instructor, this.aprendices);

  bool puedeDarClase() {
    // Verificar disponibilidad del instructor
    if (instructor.disponibilidad < 0.2) return false;

    // Calcular porcentaje de alumnos presentes
    int totalAprendices = aprendices.length;
    int totalPresentes = totalAprendices - aprendices.where((a) => a.faltas > 0).length;
    double porcentajePresentes = totalPresentes / totalAprendices;

    return porcentajePresentes >= porcentajeMinimoAsistencia;
  }

  int alumnosAprobados() {
    return aprendices.where((a) => a.calificacion >= 6.0).length;
  }

  int alumnasAprobadas() {
    return aprendices.where((a) => a.calificacion >= 6.0 && a.sexo == 'F').length;
  }
}

void main() {
  // Crear instructor
  var instructor = Instructor("123456789", "Juan Perez", 35, "M", "Programación Orientada a Objetos", 0.8);

  // Crear lista de aprendices
  var aprendices = <Aprendiz>[
    Aprendiz("987654321", "Maria Lopez", 25, "F", 8.5, 0),
    Aprendiz("456789123", "Carlos Garcia", 28, "M", 7.2, 1),
    Aprendiz("654321987", "Ana Ramirez", 23, "F", 6.8, 2),
  ];

  // Crear aula
  var aula = Aula(1, 20, "Programación Orientada a Objetos", 0.6, instructor, aprendices);

  // Verificar si se puede dar clase
  if (aula.puedeDarClase()) {
    print("Se puede dar clase en el aula ${aula.identificador}");
    print("Número de alumnos aprobados: ${aula.alumnosAprobados()}");
    print("Número de alumnas aprobadas: ${aula.alumnasAprobadas()}");
  } else {
    print("No se puede dar clase en el aula ${aula.identificador}");
  }
}