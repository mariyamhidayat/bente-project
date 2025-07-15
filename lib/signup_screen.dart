import 'package:bente_project/rounded_button.dart';
import 'package:bente_project/varfication_screen.dart';
import 'package:bente_project/sigin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen>  {








  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
        // 🔙 Background Image (covers full screen)
        Image.asset(
        'image/Rectangle 1.svg', // your background image
        fit: BoxFit.cover,
      ), SingleChildScrollView(
    child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 60.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    // 🔝 SIGN IN image at the top
    SizedBox(height: 40,),

           Image.asset(
            'image/SIGN UP-1.svg',
            width: 200, // adjust as needed
            fit: BoxFit.contain,
          ),
             SizedBox(height: 80),

            // Username
             TextField(
              decoration: InputDecoration(
                prefixIcon:  Padding(
                  padding:  EdgeInsets.all(12.0),  // adjust padding to center image nicely
                  child: Image.asset(
                    'image/username.svg',  // your image path here
                    width: 24,
                    height: 24,
                    color: Colors.white, // optional: tint image white if it's a grayscale PNG
                  ),
                ),
                hintText: 'Username',
                hintStyle: TextStyle(color: Colors.white70),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white54),
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 16),

            // Email
             TextField(
              decoration: InputDecoration(
                prefixIcon:  Padding(
                  padding:  EdgeInsets.all(12.0),  // adjust padding to center image nicely
                  child: Image.asset(
                    'image/Mail.png',  // your image path here
                    width: 24,
                    height: 24,
                    color: Colors.white, // optional: tint image white if it's a grayscale PNG
                  ),
                ),
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.white70),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white54),
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 16),

            // Date of Birth
             TextField(
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding:  EdgeInsets.all(12.0),  // adjust padding to center image nicely
                  child: Image.asset(
                    'image/Calendar.png',  // your image path here
                    width: 24,
                    height: 24,
                    color: Colors.white, // optional: tint image white if it's a grayscale PNG
                  ),
                ),
                hintText: 'Date of Birth',
                hintStyle: TextStyle(color: Colors.white70),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white54),
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 16),

            // Password
            TextField(
              obscureText: _obscurePassword,
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding:  EdgeInsets.all(12.0),  // adjust padding to center image nicely
                  child: Image.asset(
                    'image/Lock.png',  // your image path here
                    width: 24,
                    height: 24,
                    color: Colors.white, // optional: tint image white if it's a grayscale PNG
                  ),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePassword ? Icons.visibility : Icons.visibility_off,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                ),
                hintText: 'Password',
                hintStyle: const TextStyle(color: Colors.white70),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white54),
                ),
              ),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 16),

            // Confirm Password
            TextField(
              obscureText: _obscureConfirmPassword,
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding:  EdgeInsets.all(12.0),  // adjust padding to center image nicely
                  child: Image.asset(
                    'image/Lock.png',  // your image path here
                    width: 24,
                    height: 24,
                    color: Colors.white, // optional: tint image white if it's a grayscale PNG
                  ),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureConfirmPassword ? Icons.visibility : Icons.visibility_off,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureConfirmPassword = !_obscureConfirmPassword;
                    });
                  },
                ),
                hintText: 'Confirm Password',
                hintStyle: const TextStyle(color: Colors.white70),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white54),
                ),
              ),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 40),

            // Sign Up Button
            Center(
              child: CustomButton(
                title: 'SIGN UP',

                onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>VerificationScreen()));

                },
              ),
            ),

            const SizedBox(height: 20),

            // Terms
            const Text(
              "By clicking sign up, you agree to our Terms of Service and Privacy Policy",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white54, fontSize: 12),
            ),
            const SizedBox(height: 20),

            // Sign in redirect
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()));


                },
                child: const Text(
                  "Already a member? Sign in",
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),


         ],
    )
    )
        )
    ],


              )

    );





      }
}
