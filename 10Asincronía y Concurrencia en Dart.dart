import 'dart:async';
import 'dart:isolate';

// Función asincrónica que simula la obtención de datos
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Datos obtenidos';
}

// Stream que emite números con un intervalo
Stream<int> countStream(int max) async* {
  for (int i = 1; i <= max; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

// Función que se ejecuta en un isolate
void runIsolate(SendPort sendPort) {
  int counter = 0;
  Timer.periodic(Duration(seconds: 1), (Timer t) {
    counter++;
    String msg = 'Isolate: $counter';
    sendPort.send(msg);
    if (counter == 5) {
      t.cancel();
    }
  });
}

void main() async {
  // Uso de Future y async/await
  print('Inicio de la obtención de datos...');
  String data = await fetchData();
  print(data); // Output: Datos obtenidos
  print('Fin de la obtención de datos.');

  // Uso de Streams y await for
  await for (int value in countStream(5)) {
    print(value); // Output: 1, 2, 3, 4, 5 (uno por segundo)
  }

  // Uso de Isolates
  ReceivePort receivePort = ReceivePort();
  Isolate.spawn(runIsolate, receivePort.sendPort);

  await for (var message in receivePort) {
    print('Main: $message');
    if (message == 'Isolate: 5') {
      receivePort.close();
    }
  }
}
