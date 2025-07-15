import 'package:bente_project/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'dart:async';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>   {


    // Logo Animation Controller





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image (SVG or PNG)
          Image.asset(
            'image/Rectangle 1.svg',
            fit: BoxFit.cover,
          ),

          // Center the two images together, no gaps
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min, // important: makes column tight to children
              children: [
                Image.asset(
                  'image/bente.svg',
                  width: double.infinity,  // set desired width, avoid double.infinity here
                  height: 300,
                  fit: BoxFit.contain,
                ),

                // No SizedBox here to remove gap

                Image.asset(
                  'image/sss.svg',
                  width: 300, // match width or set as you want
                  height: 300,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
        ],
      ),
        );

  }
  @override
  void initState() {
    // TODO:implement initState
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      );
    });
    // Navigator.push(context, MaterialPageRoute(builder: (context)=>GetStarted()));
  }
}
