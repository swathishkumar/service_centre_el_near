import 'package:flutter/material.dart';

class LoginController {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // A mock login function (can be replaced with API authentication)
  bool login(String username, String password) {
    // Simple validation logic
    if (username == 'admin' && password == 'password') {
      return true;
    }
    return false;
  }

  // Cleanup controllers when no longer needed
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
  }
}
