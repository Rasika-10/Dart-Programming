// main.dart
import 'dart:developer';

void main()  {


  debugger();
  // Step 1: Post a custom VM service event (viewable if listener is attached)
  postEvent('user-data-fetch', {
    'status': 'loading',
    'message': 'Fetching user data from backend',
    'timestamp': DateTime.now().toIso8601String(),
  });

  // Step 2: Optional log for internal visibility (DevTools Logging tab)
  log(
    'Posted user-data-fetch event to VM Service',
    name: 'UserService',
    level: 800,
  );

  print('Custom event posted. Waiting for listener to pick it up...');


}

