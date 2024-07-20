void main() {
  // Comentario de una sola línea

  /*
     Comentario de múltiples líneas
  */

  /// Comentario de documentación

  // Declaración de variables
  var name = 'John';
  int age = 30;
  double height = 1.75;
  bool isStudent = true;
  dynamic flexibleVariable = 'Puede ser cualquier tipo';

  // Operadores aritméticos
  int a = 10;
  int b = 5;
  print(a + b); // 15
  print(a - b); // 5
  print(a * b); // 50
  print(a / b); // 2.0
  print(a % b); // 0

  // Operadores lógicos
  bool x = true;
  bool y = false;
  print(x && y); // false
  print(x || y); // true
  print(!x); // false

  // Operadores de comparación
  print(a == b); // false
  print(a != b); // true
  print(a > b); // true
  print(a < b); // false
  print(a >= b); // true
  print(a <= b); // false

  // Constantes
  const int number = 10;
  final String city = 'New York';

  // Imprimir resultados
  print('Hello, Dart!');
  print('Name: $name, Age: $age, Height: $height, Is Student: $isStudent');
  print('Number: $number, City: $city');
}
