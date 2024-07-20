void main() {
  // Funciones
  greet();
  print('La suma de 3 y 4 es: ${add(3, 4)}');
  greet('Alice');
  print(fullName(firstName: 'John', lastName: 'Doe'));
  print(fullName(lastName: 'Doe'));

  // Funciones Lambda
  var numbers = [1, 2, 3, 4, 5];
  var squares = numbers.map((number) => number * number);
  print(squares.toList());

  // Closures
  var counter = makeCounter();
  print(counter()); // 1
  print(counter()); // 2
  print(counter()); // 3

  // Colecciones: List
  var list = [1, 2, 3, 4, 5];
  list.add(6);
  print(list);
  for (var item in list) {
    print(item);
  }

  // Colecciones: Set
  var set = {'apple', 'banana', 'orange'};
  set.add('banana'); // No se añade porque ya existe
  print(set);
  for (var item in set) {
    print(item);
  }

  // Colecciones: Map
  var map = {'name': 'John', 'age': 30};
  map['age'] = 31;
  print(map);
  map.forEach((key, value) {
    print('$key: $value');
  });
}

void greet([String name = 'Guest']) {
  print('Hello, $name!');
}

int add(int a, int b) {
  return a + b;
}

String fullName({String firstName = 'Guest', required String lastName}) {
  return '$firstName $lastName';
}

Function makeCounter() {
  int count = 0;
  return () {
    count += 1;
    return count;
  };
}
