import 'package:bente_project/Nextscreens/icebarker_screen.dart';
import 'package:bente_project/button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class HotspotScreen extends StatefulWidget {
  const HotspotScreen({super.key});

  @override
  State<HotspotScreen> createState() => _HotspotScreenState();
}

class _HotspotScreenState extends State<HotspotScreen> {
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

                // Location/Hotspot Icon

                Image.asset(
                  'image/Map pin.png', // Path to your image file
                  width: 50,
                  height: 50,
                  color: Colors.white, // Optional: tint the image
                ),

                const SizedBox(height: 30),

                const Text(
                  'FIND',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    letterSpacing: 1.2,
                  ),
                ),
                const Text(
                  'HOTSPOTS',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),

                const SizedBox(height: 30),

                const Text(
                  'DISCOVER NEARBY PLACES\nWHERE YOU CAN MEET PEOPLE!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                    height: 1.4,
                  ),
                ),

                const SizedBox(height: 60),

                // NEXT Button
                CustomButton1(title: 'Next',
                     onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>IceBarker()));

                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
