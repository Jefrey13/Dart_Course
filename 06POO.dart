class Person {
  String name;
  int age;

  // Constructor predeterminado
  Person(this.name, this.age);

  // Constructor nombrado
  Person.withName(this.name) : age = 0;

  // Getter para la edad
  int get getAge => age;

  // Setter para la edad
  set setAge(int age) {
    if (age > 0) {
      this.age = age;
    } else {
      print('Age must be greater than zero');
    }
  }

  void greet() {
    print('Hello, my name is $name and I am $age years old.');
  }

  // Método estático
  static void describe() {
    print('The Person class represents a person.');
  }
}

void main() {
  // Uso de constructores
  var person1 = Person('John', 30);
  var person2 = Person.withName('Alice');

  // Llamada a métodos
  person1.greet(); // Output: Hello, my name is John and I am 30 years old.
  person2.greet(); // Output: Hello, my name is Alice and I am 0 years old.

  // Uso de getters y setters
  person2.setAge = 25;
  print('Alice\'s age: ${person2.getAge}'); // Output: Alice's age: 25

  // Uso de método estático
  Person.describe(); // Output: The Person class represents a person.
}
