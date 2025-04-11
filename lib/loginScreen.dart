// 📁 lib/screens/login_page.dart
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFEFA),
      body: Stack(
        children: [
          
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => Navigator.pop(context),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Welcome !",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "To continue using this app\n,please sign in first.",
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  const SizedBox(height: 30),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Adresse Email',
                      filled: true,
                    fillColor: Color(0xFFEAEFFF),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Mot de passe',
                      filled: true,
                      fillColor: Color(0xFFEAEFFF),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
              onPressed: () {
  Navigator.pushNamed(context, '/welcome');
 },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      backgroundColor: const Color(0xFF8E9BFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      "SE CONNECTER",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Mot de passe oublié ?",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      child: const Text(
                        "Déjà inscrit ? Se connecter",
                        style: TextStyle(color: Color(0xFF8E9BFF)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
