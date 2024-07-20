void main1() {
  // Listas
  List<int> numbers = [1, 2, 3, 4, 5];
  numbers.add(6);
  numbers.remove(3);
  print('Lista: $numbers'); // Output: Lista: [1, 2, 4, 5, 6]

  // Conjuntos
  Set<String> fruits = {'apple', 'banana', 'orange'};
  fruits.add('apple'); // No se añadirá porque ya existe
  fruits.remove('banana');
  print('Conjunto: $fruits'); // Output: Conjunto: {apple, orange}

  // Mapas
  Map<String, int> fruitPrices = {'apple': 3, 'banana': 2, 'orange': 4};
  fruitPrices['grape'] = 5;
  fruitPrices.remove('banana');
  print('Mapa: $fruitPrices'); // Output: Mapa: {apple: 3, orange: 4, grape: 5}

  // Iteración con forEach
  numbers.forEach((number) {
    print('Número: $number');
  });

  // Transformación con map
  var squares = numbers.map((number) => number * number);
  print(
      'Cuadrados: ${squares.toList()}'); // Output: Cuadrados: [1, 4, 16, 25, 36]

  // Filtrado con where
  var evenNumbers = numbers.where((number) => number % 2 == 0);
  print(
      'Números pares: ${evenNumbers.toList()}'); // Output: Números pares: [2, 4, 6]

  // Reducción con reduce
  var sum = numbers.reduce((a, b) => a + b);
  print('Suma: $sum'); // Output: Suma: 18
}

void main2() {
  List<int> numbers = [1, 2, 3, 4, 5];

  // Añadir varios elementos
  numbers.addAll([6, 7, 8]);
  print(numbers); // Output: [1, 2, 3, 4, 5, 6, 7, 8]

  // Insertar un elemento en una posición específica
  numbers.insert(2, 10);
  print(numbers); // Output: [1, 2, 10, 3, 4, 5, 6, 7, 8]

  // Eliminar el último elemento
  numbers.removeLast();
  print(numbers); // Output: [1, 2, 10, 3, 4, 5, 6, 7]

  // Crear una sublista
  List<int> sublist = numbers.sublist(2, 5);
  print(sublist); // Output: [10, 3, 4]
}

void main3() {
  Set<String> fruits = {'apple', 'banana', 'orange'};

  // Añadir varios elementos
  fruits.addAll({'grape', 'pineapple'});
  print(fruits); // Output: {apple, banana, orange, grape, pineapple}

  // Intersección de conjuntos
  Set<String> tropicalFruits = {'banana', 'pineapple', 'mango'};
  Set<String> commonFruits = fruits.intersection(tropicalFruits);
  print(commonFruits); // Output: {banana, pineapple}

  // Unión de conjuntos
  Set<String> allFruits = fruits.union(tropicalFruits);
  print(allFruits); // Output: {apple, banana, orange, grape, pineapple, mango}

  // Diferencia de conjuntos
  Set<String> uniqueFruits = fruits.difference(tropicalFruits);
  print(uniqueFruits); // Output: {apple, orange, grape}
}

void main4() {
  // Crear un mapa inicial
  Map<String, int> fruitPrices = {'apple': 3, 'banana': 2};

  // putIfAbsent
  fruitPrices.putIfAbsent('orange', () => 4);
  fruitPrices.putIfAbsent(
      'apple', () => 5); // No se asignará porque 'apple' ya existe

  // update
  fruitPrices.update(
      'apple', (value) => value + 1); // Actualiza el valor de 'apple'
  fruitPrices.update('orange', (value) => value + 1,
      ifAbsent: () => 5); // Agrega 'orange' si no existe

  // updateAll
  fruitPrices.updateAll((key, value) => value * 2); // Duplica todos los valores

  // remove
  fruitPrices.remove('banana'); // Elimina 'banana'

  // containsKey
  print(fruitPrices.containsKey('apple')); // Output: true
  print(fruitPrices.containsKey('banana')); // Output: false

  // containsValue
  print(fruitPrices.containsValue(6)); // Output: true
  print(fruitPrices.containsValue(5)); // Output: false

  // length
  print(fruitPrices.length); // Output: 2

  // isEmpty y isNotEmpty
  print(fruitPrices.isEmpty); // Output: false
  print(fruitPrices.isNotEmpty); // Output: true

  // forEach
  fruitPrices.forEach((key, value) {
    print('$key: $value');
  });
  // Output:
  // apple: 8
  // orange: 10

  // keys y values
  Iterable<String> keys = fruitPrices.keys;
  Iterable<int> values = fruitPrices.values;

  print(keys); // Output: (apple, orange)
  print(values); // Output: (8, 10)

  // addAll
  Map<String, int> moreFruitPrices = {'grape': 5, 'pineapple': 7};
  fruitPrices.addAll(moreFruitPrices);

  print(fruitPrices); // Output: {apple: 8, orange: 10, grape: 5, pineapple: 7}

  // clear
  fruitPrices.clear(); // Elimina todos los pares clave-valor

  print(fruitPrices); // Output: {}
}

void main5() {
  // Conversión entre tipos numéricos
  int a = 10;
  double b = a.toDouble();
  print(b); // Output: 10.0

  double c = 10.5;
  int d = c.toInt();
  print(d); // Output: 10

  // Conversión de String a int y double
  String str1 = '123';
  String str2 = '123.45';

  int e = int.parse(str1);
  double f = double.parse(str2);
  print(e); // Output: 123
  print(f); // Output: 123.45

  // Conversión de int y double a String
  String str3 = e.toString();
  String str4 = f.toString();
  print(str3); // Output: '123'
  print(str4); // Output: '123.45'

  // Casting de dynamic a String
  dynamic value = 'Hello, Dart!';
  String str5 = value as String;
  print(str5); // Output: 'Hello, Dart!'

  // Verificación de tipos
  if (value is String) {
    print(
        'value es una cadena de texto'); // Output: value es una cadena de texto
  }

  if (value is! int) {
    print('value no es un entero'); // Output: value no es un entero
  }

  // Conversión de List<dynamic> a List<int>
  List<dynamic> dynamicList = [1, 2, 3, 4, 5];
  List<int> intList = dynamicList.cast<int>();
  print(intList); // Output: [1, 2, 3, 4, 5]

  // Conversión de Map<dynamic, dynamic> a Map<String, int>
  Map<dynamic, dynamic> dynamicMap = {'a': 1, 'b': 2, 'c': 3};
  Map<String, int> stringIntMap = dynamicMap.cast<String, int>();
  print(stringIntMap); // Output: {a: 1, b: 2, c: 3}
}
