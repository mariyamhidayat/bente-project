import 'package:bente_project/Map_screen.dart';
import 'package:bente_project/rounded_button.dart';
import 'package:flutter/material.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> with SingleTickerProviderStateMixin {
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
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );

    _slideAnimation = Tween<Offset>(begin: Offset(0, 0.5), end: Offset.zero).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    _scaleAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.elasticOut),
    );

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
      backgroundColor: const Color(0xFF001F54), // Deep blue background
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),

              // Top Icon & Title
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.menu, color: Colors.white),
                  Icon(Icons.account_circle, size: 40, color: Colors.white),
                  Icon(Icons.check, color: Colors.white),
                ],
              ),

              const SizedBox(height: 20),
             SlideTransition(
            position: _slideAnimation,
              child: FadeTransition(
             opacity: _fadeAnimation,
             child:Text(
                'VERIFICATION',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),)),

              const SizedBox(height: 8),

              const Text(
                'To access this app, please scan your face\nand upload a photo of your state issued ID.',
                style: TextStyle(color: Colors.white70, fontSize: 14),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 40),

              // Face Scan Icon (Placeholder)
              Icon(Icons.face_retouching_natural,
                  size: 120, color: Colors.white.withOpacity(0.3)),

              const SizedBox(height: 20),

              // START SCAN Button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RoundButton(title: 'START SCAN', onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MapScreen()));

                  }),
                  Checkbox(value: true, onChanged: null),

                ],
              ),
              SizedBox(height: 7,),


              Text(
                'Scan completed',
                style: TextStyle(color: Colors.white),
              ),
              // Upload ID Section
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.upload_file, color: Color(0xFF001F54)),
                    SizedBox(width: 8),
                    Text(
                      'UPLOAD ID',
                      style: TextStyle(
                        color: Color(0xFF001F54),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Checkbox(value: true, onChanged: null),
                  Text(
                    'Upload completed',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),




            ],
          ),
        ),
      ),
    );
  }
}
