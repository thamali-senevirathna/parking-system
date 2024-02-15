import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration:const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF8ABAF2), Color(0xFF4A4ED6)],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 350,
                height: 300, 
              ),
              const SizedBox(height: 1), 
              Text(
                'ParkMate',
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()..shader = const LinearGradient(
                    colors: [Color(0xFFFC7A1C), Color(0xFFE91C61)],
                  ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                ),
              ),
              const SizedBox(height:4), 
            ],
          ),
        ),
      ),
    );
  }
}
