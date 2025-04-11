import 'package:flutter/material.dart';
import 'package:bookloop/loginScreen.dart';
import 'package:bookloop/onboard.dart';
import 'package:bookloop/RegisterScreen.dart';
import 'package:bookloop/WelcomePage.dart';
import 'package:bookloop/HomePage.dart';
import 'package:bookloop/details.dart';
import 'package:bookloop/homePage2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
 const MyApp({Key? key}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => const OnboardingScreen(),
        '/login': (_) => const LoginPage(),
        '/register': (_) => const RegisterPage(),
        '/welcome': (_) => const WelcomePage(),
        '/home': (_) => const HomePage(),
        '/home2': (context) => const HomePage2(), 
        '/details': (context) => const DetailsPage(),

      },
    );
  }
}
