import 'package:flutter/material.dart';

class RegistrationController {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  // Function to validate the inputs (you can extend this with more rules)
  String? validateInputs() {
    if (usernameController.text.isEmpty) {
      return 'Username cannot be empty';
    }
    if (emailController.text.isEmpty || !emailController.text.contains('@')) {
      return 'Invalid email';
    }
    if (passwordController.text != confirmPasswordController.text) {
      return 'Passwords do not match';
    }
    return null; // Return null if validation is successful
  }

  // Cleanup controllers when no longer needed
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }
}
