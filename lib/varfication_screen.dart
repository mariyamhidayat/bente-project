import 'package:bente_project/Map_screen.dart';
import 'package:bente_project/rounded_button.dart';
import 'package:bente_project/Nextscreens/intent_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Remove backgroundColor
      body: SafeArea(
        child: Stack(
          children: [
            // Background image covering the whole screen
            Positioned.fill(
              child: Image.asset(
                'image/Rectangle 1.svg', // your background image path
                fit: BoxFit.cover,
              ),
            ),

            // Your existing content with padding
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30),

                  // Top Icons: Menu on left, User check centered
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          'image/Menu.png',
                          width: 28,
                          height: 28,
                          color: Colors.white,
                        ),
                      ),
                      Image.asset(
                        'image/User check.svg',
                        width: 36,
                        height: 36,
                        color: Colors.white,
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Title
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      SizedBox(width: 10,),
                      Icon(Icons.arrow_back_ios, color: Colors.white),
                      SizedBox(width: 2,),
                       Text(
                        'VERIFICATION',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),
                      SizedBox(width: 2,),
                      Icon(Icons.close, color: Colors.white),
                    ],
                  ),


                  const SizedBox(height: 8),

                  const Text(
                    'To access this app, please scan your face\nand upload a photo of your state issued ID.',
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 40),

                  // Larger Face Scan Icon (SVG)
                  Image.asset(
                    'image/image 3.svg',
                    width: 180,
                    height: 180,
                    color: Colors.white.withOpacity(0.3),
                  ),

                  const SizedBox(height: 50),

                  // SCAN Button and Checkbox
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width: 20),
                      CustomButton(
                        title: 'SCAN',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => IntentScreen()),
                          );
                        },
                      ),
                      const SizedBox(width: 10),
                      Checkbox(
                        value: true,
                        onChanged: (_) {},
                        checkColor: Colors.white,
                        activeColor: Colors.blueAccent,
                      ),
                    ],
                  ),

                  const SizedBox(height: 7),

                  const Text(
                    'Scan completed',
                    style: TextStyle(color: Colors.white),
                  ),

                  const SizedBox(height: 20),
                  const Divider(color: Colors.white30),

                  const SizedBox(height: 20),

                  // Upload ID section
                  Row(
                    children: [
                      Image.asset(
                        'image/Upload.png',
                        width: 40,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 40),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: const Text(
                          'UPLOAD ID',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Monda',
                            letterSpacing: 1.2,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Checkbox(
                        value: true,
                        onChanged: (_) {},
                        checkColor: Colors.white,
                        activeColor: Colors.blueAccent,
                      ),
                    ],
                  ),

                  const Text(
                    "Upload completed",
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
