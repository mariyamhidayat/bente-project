import 'package:bente_project/rounded_button.dart';
import 'package:bente_project/sigin_screen.dart';
import 'package:bente_project/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:async';
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {


    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Stack(
          children: [
            // Background image
            Positioned.fill(
              child: Image.asset(
                'image/Rectangle 1.svg',
                fit: BoxFit.cover,
              ),
            ),
          SafeArea(
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [

           const SizedBox(height: 20),


            // Content over the background
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 50,),

                  // Welcome Image
                  Image.asset(
                    'image/welcome.svg',
                    width: 300,
                    fit: BoxFit.contain,
                  ),

                  const SizedBox(height: 50),

                  // Text: ALPHA VERSION 1.0
                  const Text(
                    'ALPHA VERSION 1.0',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      letterSpacing: 1.1,
                    ),
                  ),

                  const SizedBox(height: 80),

                  // Sign In Button
                  CustomButton(
                    title: 'SIGN IN',
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) =>SignInScreen()));
                      // Handle Sign In
                    },
                  ),

                  const SizedBox(height: 10),

                  // "or" Text
                  const Text(
                    'or',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),

                  const SizedBox(height: 10),

                  // Sign Up Button
                  CustomButton(
                    title: 'SIGN UP',
                    onTap: () {
                      Navigator.push
                        (context, MaterialPageRoute(
                          builder: (context) => SignupScreen()));
                      // Handle Sign Up
                    },
                  ),

                  const SizedBox(height: 80),

                  // Bente logo
                  Image.asset(
                    'image/bente.svg',
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),

                  const SizedBox(height: 8),

                  // Tagline
                  const Text(
                    'Real Connections. Real Places.',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ],

        ),
      )
      ]
      )
      );
    }
  }







