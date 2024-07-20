class Box<T> {
  T value;

  Box(this.value);

  T getValue() {
    return value;
  }

  void setValue(T value) {
    this.value = value;
  }
}

class AddNumber {
  static T add<T extends num>(T a, T b) {
    if (T == int) {
      return (a.toInt() + b.toInt()) as T;
    } else if (T == double) {
      return (a.toDouble() + b.toDouble()) as T;
    } else {
      throw UnsupportedError('Unsupported type');
    }
  }
}

void main() {
  // Uso de clases genéricas
  Box<int> intBox = Box<int>(10);
  print('Int value: ${intBox.getValue()}'); // Output: Int value: 10

  Box<String> stringBox = Box<String>('Hello, Dart!');
  print(
      'String value: ${stringBox.getValue()}'); // Output: String value: Hello, Dart!

  // Uso de colecciones genéricas
  List<int> intList = [1, 2, 3, 4, 5];
  intList.add(6);
  print('Int List: $intList'); // Output: Int List: [1, 2, 3, 4, 5, 6]

  Set<String> stringSet = {'apple', 'banana', 'cherry'};
  stringSet.add('date');
  print(
      'String Set: $stringSet'); // Output: String Set: {apple, banana, cherry, date}

  Map<String, double> prices = {'apple': 2.5, 'banana': 1.2};
  prices['cherry'] = 3.0;
  print(
      'Prices Map: $prices'); // Output: Prices Map: {apple: 2.5, banana: 1.2, cherry: 3.0}

  // Uso de métodos genéricos
  int sumInt = AddNumber.add<int>(2, 3);
  print('Sum of ints: $sumInt'); // Output: Sum of ints: 5

  double sumDouble = AddNumber.add<double>(2.5, 3.5);
  print('Sum of doubles: $sumDouble'); // Output: Sum of doubles: 6.0
}
