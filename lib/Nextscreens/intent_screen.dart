import 'package:bente_project/Nextscreens/hotspot_screen.dart';
import 'package:bente_project/button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class IntentScreen extends StatefulWidget {
  const IntentScreen({super.key});

  @override
  State<IntentScreen> createState() => _IntentScreenState();
}

class _IntentScreenState extends State<IntentScreen> {
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

          // Gradient Overlay + Content
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
                    const SizedBox(height: 28),

                    // WiFi Icon
                    Image.asset(
                      'image/Radio.png', // Path to your image file
                      width: 50,
                      height: 50,
                      color: Colors.white, // Optional: tint the image
                    ),

                    const SizedBox(height: 30),

                    const Text(
                      'CHOOSE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontFamily: 'Montserrat',
                        letterSpacing: 1.2,
                      ),
                    ),
                    const Text(
                      'INTENT',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                      ),
                    ),

                    const SizedBox(height: 30),

                    const Text(
                      'KNOW WHAT YOU’RE LOOKING\nFOR, EXACTLY.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white70,
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                        height: 1.4,
                      ),
                    ),

                    const SizedBox(height: 60),

                    // NEXT Button
                    CustomButton1(
                      title: 'NEXT',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HotspotScreen(),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
