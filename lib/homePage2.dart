// 📁 lib/screens/home_page.dart
import 'package:flutter/material.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFEFA),
      body: SafeArea(
        child: SingleChildScrollView(
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
                  "Salut, Pierre",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  "Choisis un thème à explorer :",
                  style: TextStyle(color: Colors.black54),
                ),
                const SizedBox(height: 24),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _HorizontalCard(
                        title: "Numérique Ecolo",
                        subtitle: "Tips du jour",
                        duration: "3-10 MIN",
                        color: const Color(0xFFB6B9FF),
                        imagePath: 'assets/images/test.png',
                        onTap: () => Navigator.pushNamed(context, '/details'),
                      ),
                      const SizedBox(width: 12),
                      _HorizontalCard(
                        title: "Apprendre en écoutant",
                        subtitle: "",
                        duration: "3 MIN",
                        color: const Color(0xFFFFA186),
                        imagePath: 'assets/images/test.png',
                        onTap: () => Navigator.pushNamed(context, '/details'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  width : double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(16),
                    
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Cours du jour",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Réalité Augmentée",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "3-10 MIN",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  "Précédents cours",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      _PreviousCourseCard(title: "Cours 1", type: "MÉDITATION - 3-10 MIN", color: Color(0xFFB6D3C2)),
                      _PreviousCourseCard(title: "Cours 2", type: "MÉDITATION - 3-10 MIN", color: Color(0xFFFFDDA1)),
                      _PreviousCourseCard(title: "Cours 3", type: "MÉDITATION - 3-10 MIN", color: Color(0xFFB6D3C2)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.play_circle), label: 'Start'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
    );
  }
}

class _HorizontalCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String duration;
  final Color color;
  final String imagePath;
  final VoidCallback onTap;

  const _HorizontalCard({
    required this.title,
    required this.subtitle,
    required this.duration,
    required this.color,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                imagePath,
                height: 50,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) => const Icon(Icons.image_not_supported, color: Colors.white),
              ),
              const SizedBox(height: 8),
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
              if (subtitle.isNotEmpty)
                Text(subtitle, style: const TextStyle(color: Colors.white)),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(duration, style: const TextStyle(color: Colors.white)),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text("START", style: TextStyle(color: Colors.black)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PreviousCourseCard extends StatelessWidget {
  final String title;
  final String type;
  final Color color;

  const _PreviousCourseCard({
    required this.title,
    required this.type,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(type, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
