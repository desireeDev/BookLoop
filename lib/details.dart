// lib/screens/details_page.dart
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int selectedHour = 0;
  int selectedMinute = 0;
  int selectedPeriod = 0; // 0 = AM, 1 = PM

  final List<String> _hours = List.generate(12, (index) => (index + 1).toString().padLeft(2, '0'));
  final List<String> _minutes = List.generate(60, (index) => index.toString().padLeft(2, '0'));
  final List<String> _period = ['AM', 'PM'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFEFA),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFEFA),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Image.asset(
              'assets/images/toggle.png',
              height: 30,
              errorBuilder: (context, error, stackTrace) => const Icon(Icons.settings),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "À quelle heure veux-tu\napprendre ?",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Choisis le moment qui te convient le mieux.\nUn peu chaque jour suffit pour progresser.",
              style: TextStyle(color: Colors.black54),
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: SizedBox(
                height: 180,
                child: Row(
                  children: [
                    Expanded(
                      child: CupertinoPicker(
                        itemExtent: 40,
                        onSelectedItemChanged: (index) {
                          setState(() => selectedHour = index);
                        },
                        children: _hours.map((e) => Center(child: Text(e))).toList(),
                      ),
                    ),
                    const Text(":"),
                    Expanded(
                      child: CupertinoPicker(
                        itemExtent: 40,
                        onSelectedItemChanged: (index) {
                          setState(() => selectedMinute = index);
                        },
                        children: _minutes.map((e) => Center(child: Text(e))).toList(),
                      ),
                    ),
                    Expanded(
                      child: CupertinoPicker(
                        itemExtent: 40,
                        onSelectedItemChanged: (index) {
                          setState(() => selectedPeriod = index);
                        },
                        children: _period.map((e) => Center(child: Text(e))).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Quels jours veux-tu\napprendre ?",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Idéalement tous les jours, mais commence\navec 3 à 5 sessions par semaine.",
              style: TextStyle(color: Colors.black54),
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: ["L", "M", "M", "J", "V", "S", "D"].map((e) {
                return CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black87,
                  child: Text(e, style: const TextStyle(color: Colors.white)),
                );
              }).toList(),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/home2'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF8E9BFF),
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              ),
              child: const Text("Enregistrer"),
            ),
            const SizedBox(height: 16),
            Center(
              child: TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Non Merci !", style: TextStyle(color: Colors.black)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
