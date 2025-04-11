// 📁 lib/screens/register_page.dart
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFEFA),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context),
              ),
              const SizedBox(height: 20),
              const Text(
                "Creer un compte",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  hintText: 'CODE DE CONNEXION',
                  filled: true,
                  fillColor: Color(0xFFEAEFFF),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Nom',
                  filled: true,
                  fillColor: Color(0xFFEAEFFF),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  filled: true,
                  fillColor: Color(0xFFEAEFFF),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 12),
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
              const SizedBox(height: 16),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (_) {}),
                  const Expanded(
                    child: Text("J’ai lu la politique de confidentialité"),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 48),
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
              const SizedBox(height: 12),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Déjà inscrit ? Se connecter",
                    style: TextStyle(color: Color(0xFF8E9BFF)),
                  ),
                ),
              ),
            ],
          ),
          ),
        ),
      ),
    );
  }
}
