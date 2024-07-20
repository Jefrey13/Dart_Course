void main() {
  int number = 10;

  if (number > 0) {
    print('El número es positivo.');
  } else if (number < 0) {
    print('El número es negativo.');
  } else {
    print('El número es cero.');
  }
}

void main2() {
  int day = 3;

  switch (day) {
    case 1:
      print('Lunes');
      break;
    case 2:
      print('Martes');
      break;
    case 3:
      print('Miércoles');
      break;
    case 4:
      print('Jueves');
      break;
    case 5:
      print('Viernes');
      break;
    case 6:
      print('Sábado');
      break;
    case 7:
      print('Domingo');
      break;
    default:
      print('Día inválido');
  }
}

void main3() {
  int count = 0;

  while (count < 5) {
    print('Contador: $count');
    count++;
  }
}

void main4() {
  int count = 0;

  do {
    print('Contador: $count');
    count++;
  } while (count < 5);
}

void main5() {
  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      break; // Sale del bucle cuando i es 5
    }
    print('Iteración $i');
  }
}

void main6() {
  for (int i = 0; i < 10; i++) {
    if (i % 2 == 0) {
      continue; // Salta las iteraciones donde i es par
    }
    print('Iteración $i');
  }
}

int sum(int a, int b) {
  return a + b; // Devuelve la suma de a y b
}

void main7() {
  int result = sum(3, 4);
  print('Resultado: $result'); // Imprime "Resultado: 7"
}
