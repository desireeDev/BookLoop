import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      if (_controller.hasClients) {
        _controller.animateToPage(
          1,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFEFA),
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              _IntroPage(
                image: 'assets/images/livre.png',
                title: "BookLoop",
                subtitle: "Webtoons, romans, BD… à portée de passion",
                buttonText: "Découvrir",
              ),
              _IntroPage(
                image: 'assets/images/name.png',
                title: "Bienvenue dans BookLoop.",
                subtitle: "Rejoins une communauté de lecteurs curieux et passionnés",
                buttonText: "Commencer",
                onPressed: () => Navigator.pushNamed(context, '/login'),
              ),
            ],
          ),

          // Toggle image en haut à droite
          
        ],
      ),
    );
  }
}

class _IntroPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String? buttonText;
  final VoidCallback? onPressed;
  final bool showButton;
  final String image;

  const _IntroPage({
    required this.title,
    required this.subtitle,
    this.buttonText,
    this.onPressed,
    this.showButton = true,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            Image.asset(image, height: 220),
            const SizedBox(height: 40),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, color: Colors.black87),
            ),
            if (showButton) ...[
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: onPressed,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFD0A05B),
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text("Commencer", style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/login'),
                child: const Text(
                  "Déjà inscrit ? Se connecter",
                  style: TextStyle(color: Color(0xFF8E9BFF), fontWeight: FontWeight.w500),
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
