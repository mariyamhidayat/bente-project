import 'package:bente_project/Nextscreens/menu_screen.dart';
import 'package:bente_project/button2.dart';
import 'package:flutter/material.dart';
import 'package:bente_project/Map_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
class CompleteScreen extends StatefulWidget {
  const CompleteScreen({super.key});

  @override
  State<CompleteScreen> createState() => _CompleteScreenState();
}

class _CompleteScreenState extends State<CompleteScreen> {
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
                 SizedBox(height: 24),

                Image.asset(
                  'image/THUMBS UP ICON 1.png', // Path to your image file
                  width: 50,
                  height: 50,
                  color: Colors.white, // Optional: tint the image
                ),

                const SizedBox(height: 30),

                const Text(
                  'TUTORIAL',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    letterSpacing: 1.2,
                  ),
                ),
                const Text(
                  'COMPLETE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),

                const SizedBox(height: 30),

                const Text(
                  'GET OUT THERE AND\nFIND YOUR NEXT MATCH!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                    height: 1.4,
                  ),
                ),

                const SizedBox(height: 70),

                CustomButton1(title: 'EXPLORE',
                    onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MapScreen()));

                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

