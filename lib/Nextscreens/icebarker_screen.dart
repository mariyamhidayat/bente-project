import 'package:bente_project/Nextscreens/unlock_screen.dart';
import 'package:bente_project/button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class IceBarker extends StatefulWidget {
  const IceBarker({super.key});

  @override
  State<IceBarker> createState() => _IceBarkerState();
}

class _IceBarkerState extends State<IceBarker> {
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

                // Placeholder for hammer + cracked block icon
                Image.asset(
                  'image/Radio.png', // Path to your image file
                  width: 50,
                  height: 50,
                  color: Colors.white, // Optional: tint the image
                ),

                const SizedBox(height: 30),

                const Text(
                  'USE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    letterSpacing: 1.2,
                  ),
                ),
                const Text(
                  'ICEBREAKERS',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),

                const SizedBox(height: 30),

                const Text(
                  'MAKE YOUR MOVE!\nNO AWKWARD CONVERSATIONS.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                    height: 1.4,
                  ),
                ),

                const SizedBox(height: 60),

                // NEXT Button
                CustomButton1(title: 'NEXT',
                     onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>UnlockScreen()));

                })
              ],
            ),
          ),
        ),
      ),
    );;
  }
}
