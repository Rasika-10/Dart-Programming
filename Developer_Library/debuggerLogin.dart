import 'dart:developer';

class AuthService {
  bool login(String username, String password) {
    // Simulate login success
    bool isAuthenticated = username == 'admin' && password == '1234';
    
    debugger(); // 👈 This lets you inspect variables live in DevTools

    if (isAuthenticated) {
      print('Login successful for $username');
    } else {
      print('Login failed');
    }

    return isAuthenticated;
  }
}

void main() {
  AuthService auth = AuthService();
  auth.login('user', '1234'); // This should pause if debugger is attached

  print('Proceeding to next step...');
}
