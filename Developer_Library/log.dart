import 'dart:developer';
import 'dart:io';

void main() {
  try {
    int a = 5;
    int b = 0;

    if (b == 0) {
      throw Exception('Division by zero is not allowed.');
    }

    int result = a ~/ b;
    print(result);
  } catch (e, s) {

    debugger();
    log(
      'Error occurred during division',
      name: 'DivisionLogger',
      error: e,
      stackTrace: s,
      level: 2000,
    );
  }

  print('Press ENTER to exit');
  stdin.readLineSync();
}
