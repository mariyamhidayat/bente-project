import 'package:bente_project/Nextscreens/menu_screen.dart';
import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

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
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top row with menu and search
            Row(
              children: [
                // Menu icon image
                Image.asset(
                  'image/Menu.png', // replace with your menu icon path
                  width: 24,
                  height: 24,
                  color: Colors.white,
                ),
                const SizedBox(width: 16),

                // Search bar with icon and placeholder text
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.white70, width: 1),
                      ),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.search, color: Colors.white70),
                        const SizedBox(width: 8),
                        Expanded(
                          child: TextField(
                            style: const TextStyle(color: Colors.white70),
                            decoration: const InputDecoration(
                              hintText: 'Search for hotspots',
                              hintStyle: TextStyle(color: Colors.white70),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            // Spacer to push the icons and text towards center
            const Spacer(),

            // Map icons and markers
            Center(
              child: SizedBox(
                width: 250, // Adjust width/height to fit your design
                height: 250,
                child: Stack(
                  clipBehavior: Clip.none, // Allows markers to overflow
                  alignment: Alignment.center,
                  children: [
                    // Center map image
                    Image.asset(
                      'image/Map.png', // replace with your map image path
                      width: 180,
                      height: 180,
                      color: Colors.white,
                    ),

                    // Positioned map markers
                    Positioned(
                      top: -40,
                      right: 50,
                      child: Image.asset(
                        'image/Map pin.png', // replace with your marker image path
                        width: 60,
                        height: 90,
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      bottom: -40,
                      left: 50,
                      child: Image.asset(
                        'image/Map pin.png', // same marker image path
                        width: 60,
                        height: 90,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),

            // Text "3D MAP" and subtitle
            Center(
              child: Column(
                children:  [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MenuScreen()),
                      );
                    },
                    child: const Text(
                      '3D MAP',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'AR, HOTSPOTS, AVATARS',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                      letterSpacing: 1.1,
                    ),
                  ),
                ],
              ),
            ),

            const Spacer(),
          ],
        ),
      ),
    );
  }
}
