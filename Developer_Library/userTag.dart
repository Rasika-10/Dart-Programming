import 'dart:developer';

final myTag = UserTag('MyTag');

void main() {
  print('Starting CPU intensive work with UserTag...');
  debugger();
  //myTag.makeCurrent();  // Activate tag here
  
  debugger();
  for (int i = 0; i < 1000; i++) {
     i * i;
  
  }
  
  print('Finished work');
}
