import 'package:bente_project/rounded_button.dart';
import 'package:bente_project/signup_screen.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // 🖼️ Background image
          Image.asset(
            'image/Rectangle 1.svg', // If it's SVG, use SvgPicture.asset
            fit: BoxFit.cover,
          ),

          // 📄 Content
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 60.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // 🔝 SIGN IN image at the top
                  SizedBox(height: 40,),
                  Image.asset(
                    'image/SIGN IN-1.svg',
                    width: 200,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 100),

                  // 🧑 Username Field
                  TextField(
                    controller: usernameController,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Username or Email',
                      hintStyle: TextStyle(color: Colors.white70),
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Image.asset(
                          'image/username.svg',
                          width: 24,
                          height: 24,
                          color: Colors.white,
                        ),
                      ),
                      border: UnderlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),

                  // 🔒 Password Field
                  TextField(
                    controller: passwordController,
                    obscureText: isObscureText,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.white70),
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Image.asset(
                          'image/Lock.png',
                          width: 24,
                          height: 24,
                          color: Colors.white,
                        ),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          isObscureText ? Icons.visibility_off : Icons.visibility,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            isObscureText = !isObscureText;
                          });
                        },
                      ),
                      border: UnderlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),

                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'FORGOT PASSWORD?',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                  SizedBox(height: 55),

                  // 🔘 Custom Sign In Button
                  CustomButton(title: 'SIGN IN', onTap: () {}),
                  SizedBox(height: 80),

                  Text(
                    'New to Bente?',
                    style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupScreen()),
                      );
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
