import 'dart:developer';
import 'dart:io';

void main() {
  var user = {'id': 1, 'name': 'Alice'};

  debugger(); // Pauses the program here
  inspect(user);// View in Variables tab
  log('Inspect user: $user', name: 'AppLogger');  // View in Logging tab

  print('Press ENTER to exit');
  stdin.readLineSync();
}
