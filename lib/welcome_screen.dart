import 'package:bente_project/rounded_button.dart';
import 'package:bente_project/sigin_screen.dart';
import 'package:bente_project/signup_screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),);

    _slideAnimation =
        Tween<Offset>(begin: Offset(0, 0.5), end: Offset.zero).animate(
          CurvedAnimation(parent: _controller, curve: Curves.easeOut),);

    _scaleAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.elasticOut),);

    _controller.forward(); // Start animations
    }

    @override
    void dispose() {
      _controller.dispose();
      super.dispose();
    }


    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF0A0E31), Color(0xFF12205F)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Header Text
              Column(
                children: [
                  SizedBox(height: 10),
                  SlideTransition(
                      position: _slideAnimation,
                      child: FadeTransition(
                          opacity: _fadeAnimation,
                          child: Text(
                            'WELCOME TO THE PARTY!',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFB4B9FF),
                              letterSpacing: 1.2,
                            ),
                          )
                      )),
                  SizedBox(height: 20),
                  FadeTransition(
                    opacity: _fadeAnimation,
                    child: Text(
                      'ALPHA VERSION 1.0',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                      ),
                    ),),
                ],
              ),

              // Buttons
              Column(
                children: [
                  RoundButton(
                    title: 'SIGN IN',
                    onTap: () {
                      // TODO: Navigate to Sign In screen
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => SigInScreen()));
                    },
                  ),
                  SizedBox(height: 10),
                  Text(
                    'or',
                    style: TextStyle(color: Colors.white70),
                  ),
                  SizedBox(height: 10),
                  RoundButton(
                    title: 'SIGN UP',
                    onTap: () {
                      // TODO: Navigate to Sign Up screen
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => SignupScreen()));
                    },
                  ),
                ],
              ),

              // Logo + Tagline
              Column(
                children: [
                  SlideTransition(
                    position: _slideAnimation,
                    child: FadeTransition(
                      opacity: _fadeAnimation,
                      child:  Text(
                      'bente',
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[600],
                        shadows: [
                          Shadow(
                            offset: Offset(2, 2),
                            blurRadius: 3,
                            color: Colors.black.withOpacity(0.4),
                          ),
                        ],
                      ),
                    ),)),
                  SizedBox(height: 8),
                  Text(
                    'Real Connections. Real Places.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white70,
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ),
      );
    }
  }
