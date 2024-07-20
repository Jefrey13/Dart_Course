void main() {
  // Ejemplo de Exception genérica
  try {
    throw Exception('Generic exception');
  } on Exception catch (e) {
    print('Error: $e'); // Output: Error: Exception: Generic exception
  }

  // Ejemplo de FormatException
  try {
    int.parse('NotANumber');
  } on FormatException catch (e) {
    print(
        'Error: $e'); // Output: Error: FormatException: Invalid radix-10 number
  }

  // Ejemplo de ArgumentError
  try {
    checkPositive(-1);
  } on ArgumentError catch (e) {
    print(
        'Error: $e'); // Output: Error: Invalid argument(s): The number must be positive
  }

  // Ejemplo de RangeError
  try {
    checkIndex(5, 3);
  } on RangeError catch (e) {
    print(
        'Error: $e'); // Output: Error: RangeError (index): Invalid value: Not in range 0..2, inclusive: 5
  }

  // Ejemplo de StateError
  try {
    performOperation(false);
  } on StateError catch (e) {
    print('Error: $e'); // Output: Error: Bad state: Operation not allowed
  }

  // Ejemplo de UnimplementedError
  try {
    notImplementedFunction();
  } on UnimplementedError catch (e) {
    print(
        'Error: $e'); // Output: Error: UnimplementedError: This function is not yet implemented
  }

  // Ejemplo de UnsupportedError
  try {
    unsupportedOperation();
  } on UnsupportedError catch (e) {
    print(
        'Error: $e'); // Output: Error: Unsupported operation: This operation is not supported
  }

  // Ejemplo de excepción personalizada
  try {
    throw CustomException('This is a custom exception');
  } on CustomException catch (e) {
    print(
        'Error: $e'); // Output: Error: CustomException: This is a custom exception
  }
}

void checkPositive(int number) {
  if (number < 0) {
    throw ArgumentError('The number must be positive');
  }
}

void checkIndex(int index, int length) {
  if (index < 0 || index >= length) {
    throw RangeError.index(index, length);
  }
}

void performOperation(bool allowed) {
  if (!allowed) {
    throw StateError('Operation not allowed');
  }
}

void notImplementedFunction() {
  throw UnimplementedError('This function is not yet implemented');
}

void unsupportedOperation() {
  throw UnsupportedError('This operation is not supported');
}

class CustomException implements Exception {
  final String message;
  CustomException(this.message);

  @override
  String toString() => 'CustomException: $message';
}
