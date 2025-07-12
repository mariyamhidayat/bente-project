import 'package:flutter/material.dart';
// which is component and reuse
class RoundButton extends StatelessWidget {
  final String title;

  final VoidCallback onTap;
  const  RoundButton({Key? key,
    required this.title,
    required this.onTap,

  }):super(key:key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.indigo[900],
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero, // <- Rectangle shape
          ),
        ),
        onPressed: onTap,
        child: Text(
          title,
          style: const TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }
}
