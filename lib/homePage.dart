// 📁 lib/screens/home_page.dart
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFEFA),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    'assets/images/toggle.png',
                    height: 32,
                    errorBuilder: (context, error, stackTrace) => const Icon(Icons.settings),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Pourquoi utilises-tu",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Cybra AR ?",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Choisis un thème à explorer :",
                style: TextStyle(color: Colors.black54),
              ),
              const SizedBox(height: 24),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.8,
                  children: [
                    _TopicCard(
                      title: "Découvrir les bases du numérique",
                      imagePath: 'assets/images/test.png',
                      backgroundColor: const Color(0xFFB6B9FF),
                     onTap: () {
                        Navigator.pushNamed(context, '/details');
                      },
                    ),
                    _TopicCard(
                      title: "Se protéger sur Internet",
                      imagePath: 'assets/images/test.png',
                      backgroundColor: const Color(0xFFFFA186),
                      onTap: () {},
                    ),
                    _TopicCard(
                      title: "Gagner en autonomie numérique",
                      imagePath: 'assets/images/test.png',
                      backgroundColor: const Color(0xFFFFB580),
                      onTap: () {},
                    ),
                    _TopicCard(
                      title: "Insertion & emploi",
                      imagePath: 'assets/images/test.png',
                      backgroundColor: const Color(0xFF74C2A8),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TopicCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final Color backgroundColor;
  final VoidCallback onTap;

  const _TopicCard({
    required this.title,
    required this.imagePath,
    required this.backgroundColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Image.asset(
                imagePath,
                height: 70,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) => const Icon(Icons.image_not_supported),
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
