import 'package:bente_project/Nextscreens/complete_Screen.dart';
import 'package:bente_project/button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class MatchScreen extends StatefulWidget {
  const MatchScreen({super.key});

  @override
  State<MatchScreen> createState() => _MatchScreenState();
}

class _MatchScreenState extends State<MatchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
      // Background Image
      Positioned.fill(
      child: Image.asset(
        'image/Rectangle 1.svg', // Replace with your image path
        fit: BoxFit.cover,
      ),
    ),
    Container(

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


                Image.asset(
                  'image/_NEW_ MATCH ICON 4.png', // Path to your image file
                  width: 50,
                  height: 50,
                  color: Colors.white, // Optional: tint the image
                ),

                const SizedBox(height: 30),

                const Text(
                  'MATCH',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    letterSpacing: 1.2,
                  ),
                ),
                const Text(
                  'IRL',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),

                const SizedBox(height: 30),

                const Text(
                  'MATCH IRL WITH PEOPLE\nYOU’RE COMPATIBLE WITH!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                    height: 1.4,
                  ),
                ),

                const SizedBox(height: 60),

                CustomButton1(title: 'NEXT',
                     onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CompleteScreen()));

                })
              ],
            ),
          ),
    )

        ),
      ]
    )

    );

  }
}
