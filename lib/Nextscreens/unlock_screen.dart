import 'package:bente_project/Nextscreens/match_Screen.dart';
import 'package:bente_project/button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class UnlockScreen extends StatefulWidget {
  const UnlockScreen({super.key});

  @override
  State<UnlockScreen> createState() => _UnlockScreenState();
}

class _UnlockScreenState extends State<UnlockScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF000E4D), Color(0xFF0025A2)],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'TUTORIAL',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                    letterSpacing: 2,
                  ),
                ),
                const SizedBox(height: 24),

                // Placeholder icon (e.g., jukebox or vibe icon)

                Image.asset(
                  'image/VIBES ICON 4.png', // Path to your image file
                  width: 50,
                  height: 50,
                  color: Colors.white, // Optional: tint the image
                ),
                const SizedBox(height: 30),

                const Text(
                  'UNLOCK',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    letterSpacing: 1.2,
                  ),
                ),
                const Text(
                  'VIBES',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),

                const SizedBox(height: 30),

                const Text(
                  'EARN BADGES BASED\nON YOUR ACTIVITIES!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                    height: 1.4,
                  ),
                ),

                const SizedBox(height: 60),

                CustomButton1(
                    title: 'NEXT',
                    onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MatchScreen()));

                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
