import 'dart:async';
import 'package:flutter/material.dart';
import 'main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 500), () {
      if (mounted) {
        setState(() {
          _opacity = 1.0;
        });
      }
    });

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFA7BBC7),
      body: Center(
        child: AnimatedOpacity(
          duration: const Duration(seconds: 1),
          opacity: _opacity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/download.png',
                width: 280,
                fit: BoxFit.contain,
                color: const Color(0xFF2B5D7E),
                colorBlendMode: BlendMode.modulate,
              ),

              const SizedBox(height: 25),

              const Text(
                "﴾ أَلَا بِذِكْرِ اللَّهِ تَطْمَئِنُّ الْقُلُوبُ ﴿",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24, 
                  color: Color(0xFF2B5D7E),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Cairo',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
