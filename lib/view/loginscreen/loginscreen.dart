import 'package:flutter/material.dart';
import 'package:service_centre_el_near/controller/logincontroller.dart';
import 'package:service_centre_el_near/view/homescreen/homescreen.dart';
import 'package:service_centre_el_near/view/registrationscreen/registrationscreen.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final LoginController _controller =
      LoginController(); // Initialize the controller
  String _errorMessage = ''; // To display error messages

  @override
  void dispose() {
    _controller.dispose(); // Dispose controllers
    super.dispose();
  }

  void _handleLogin() {
    String username = _controller.usernameController.text;
    String password = _controller.passwordController.text;

    if (_controller.login(username, password)) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Homescreen()),
      );
    } else {
      setState(() {
        _errorMessage = 'Invalid username or password';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("asset/bgimage.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Container(
            height: 350,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Login',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: const Color.fromARGB(255, 60, 143, 211),
                            ),
                          ),
                          Text(
                            'Hi, Welcome',
                            style: TextStyle(
                              fontSize: 25,
                              color: const Color.fromARGB(255, 60, 143, 211),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    controller: _controller.usernameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Username',
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: _controller.passwordController,
                    obscureText: true, // For password
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Password',
                    ),
                  ),
                  SizedBox(height: 10),
                  if (_errorMessage.isNotEmpty)
                    Text(
                      _errorMessage,
                      style: TextStyle(color: Colors.red),
                    ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _handleLogin,
                    child: Text('Login'),
                  ),
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Create new account',
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Registrationscreen(),
                            ),
                          );
                        },
                        child: Text('Sign up'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
