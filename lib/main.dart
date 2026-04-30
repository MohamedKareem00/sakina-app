import 'package:flutter/material.dart';
import 'travel_dua_screen.dart';
import 'prayer_azkar_page.dart';
import 'sleepazkar.dart';
import 'sebha.dart';
import 'dua_khatm_quran.dart';
import 'morningeveningazkar.dart';
import 'exithomedua.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFA7BBC7),

      appBar: AppBar(
        backgroundColor: const Color(0xFF2B5D7E),
        centerTitle: true,
        title: const Text(
          "سَكِينة",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 10),

            buildExpandedButton("أذكار الصباح والمساء", Icons.wb_sunny, () {
              Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => const MorningEveningAzkarpage(),         
                ),
              );
            }),
            buildExpandedButton("أذكار الصلاة", Icons.home, () {
              Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => const PrayerAzkarPage(),         
                ),
              );
            }),
            buildExpandedButton("أذكار النوم", Icons.nightlight, () {
                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SleepAzkarPage(),
                ),
              );
            }),
            buildExpandedButton("دعاء دخول المنزل والخروج منه", Icons.house, () {
                  Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => const ExitHomeDuaPage(),         
                ),
              );
            }),
            buildExpandedButton("دعاء ختم القرآن", Icons.menu_book, () {
                  Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => const DuaKhatmQuran(),         
                ),
              );
            }),
            buildExpandedButton("دعاء السفر", Icons.flight, () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TravelDuaPage(),
                ),
              );
            }),
            buildExpandedButton("المسبحة", Icons.fingerprint, () {
                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SebhaPage(),
                ),
              );
            }),

            const SizedBox(height: 10),

            const Text(
              "﴿ فَاذْكُرُونِي أَذْكُرْكُمْ ﴾",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildExpandedButton(String text, IconData icon, VoidCallback onPressed) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: const Color(0xFF2B5D7E)),
              const SizedBox(width: 10),
              Text(
                text,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}