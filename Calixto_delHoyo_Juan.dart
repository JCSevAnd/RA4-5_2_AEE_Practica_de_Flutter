//Clase persona
class Persona{
  //Declaración de variables
  String nombre;
  int edad;
  //Mostrar datos en pantalla
  void mostrarInfo(){
    print('Nombre: $nombre, Edad: $edad');
  }
  //Constructor predeterminado
  Persona(this.nombre, this.edad){
    this.nombre="Desconocido";
    this.edad=0;
  }
  //Constructor nombrado
  Persona.nombrada(this.nombre, this.edad);
  //Constructor de fábrica
  factory Persona.fabrica(int edad) {
    if (edad>0){
    }
      return Persona('Persona con edad $edad', edad);
    }
}
//Clase empleado
class Empleado extends Persona {
  //Declaración de variables
  String puesto;
  double salario;
  //Constructor Empleado y override que añade las variables de empleado a las de persona
  Empleado(String nombre, int edad, this.puesto, this.salario) : super(nombre, edad);
    @override
    void mostrarInfo(){
    super.mostrarInfo();
    print('Puesto: $puesto, Salario: \$${salario.toStringAsFixed(2)}');
  }  
}
//Main para las pruebas
void main() {
  //Pruebas de la clase Persona
  //Prueba del constructor por defecto
  Persona persona1=Persona("Manolo", 22);
  persona1.mostrarInfo();
  //Prueba del constructor nombrado
  Persona persona2=Persona.nombrada("Manolo" ,22);
  persona2.mostrarInfo();
  //Prueba del constructor de fábrica
  Persona persona3=Persona.fabrica(22);
  persona3.mostrarInfo();
  //Prueba de la clase Empleado
  Empleado empleado1=Empleado("Manolo", 22, "Contable", 20.72);
  empleado1.mostrarInfo();
}
