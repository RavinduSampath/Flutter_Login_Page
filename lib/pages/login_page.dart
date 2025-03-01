import 'package:flutter/material.dart';
import 'package:login/components/button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
  
}

class _LoginPageState extends State<LoginPage> {
  // Text editing controllers
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Password visibility state
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.lock, size: 100),
                const SizedBox(height: 50),

                Text(
                  "Welcome back!\nYou have been missed",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
                const SizedBox(height: 25),

                // Username TextField with an email icon on the left
                TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: const OutlineInputBorder(),
                    prefixIcon: Icon(Icons .email), // Email icon on the left side
                  ),
                  obscureText: false,
                ),
                const SizedBox(height: 15),

                // Password TextField with an eye icon on the right for visibility toggle
                TextField(
                  controller: passwordController,
                  obscureText: !_isPasswordVisible, // Toggle visibility
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: const OutlineInputBorder(),
                    contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    prefixIcon: Icon(Icons.lock), // Lock icon for password
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible; // Toggle password visibility
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Text("Forgot password?",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
                ),

                const SizedBox(height: 15),
                CustomButton(
                  text: "Login",
                  onPressed: () {
                    final String username = usernameController.text;
                    final String password = passwordController.text;

                    print("Username: $username");
                    print("Password: $password");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
