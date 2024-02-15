import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color.fromARGB(255, 136, 181, 227), Color.fromARGB(255, 15, 8, 117)],
              ),
            ),
          ),
          Positioned(
            top: -230,
            right: 69,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.1), 
                    blurRadius: 50,
                    offset: const Offset(9, 9), 
                  ),
                ],
              ),
              child: Transform.rotate(
                angle: 3.14,
                child: Image.asset(
                  'assets/images/CircleDown.png',
                  width: 630,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -200,
            left: 65,
            child: Transform.rotate(
              angle: 3.14,
              child: Image.asset(
                'assets/images/CircleDown.png',
                width: 500,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 250,
                  height: 250,
                ),
                const SizedBox(height: 5),
                Container(
                  margin: const EdgeInsets.only(bottom: 35),
                  child: Text(
                    'ParkMate',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()
                        ..shader = const LinearGradient(
                          colors: [Color(0xFFFC7A1C), Color(0xFFE91C61)],
                        ).createShader(
                            const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                    ),
                  ),
                ),
                const SizedBox(height:80),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
