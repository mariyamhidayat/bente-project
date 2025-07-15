import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'image/Rectangle 1.svg', // Replace with your background image path
              fit: BoxFit.cover,
            ),
          ),

          // Menu Content
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Top bar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.arrow_back_ios, color: Colors.white),
                      Text(
                        'MENU',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                      ),
                      Icon(Icons.close, color: Colors.white),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Centered bente image
                  Center(
                    child: Image.asset(
                      'image/bente.svg',
                      width: 150,
                      height: 50,
                      fit: BoxFit.contain,
                    ),
                  ),

                  const SizedBox(height: 40),

                  // Menu items
                  const MenuItem(
                    image: AssetImage('image/account_circle.png'),
                    title: 'My Profile',
                  ),
                  const MenuItem(
                    image: AssetImage('image/Mail.png'),
                    title: 'Messages',
                  ),
                  const MenuItem(
                    image: AssetImage('image/_NEW_ MATCH ICON 4.png'),
                    title: 'Matches',
                  ),

                  // Shop menu item with icon instead of image
                  const MenuItemIcon(
                    icon: Icons.storefront_outlined,
                    title: 'Shop',
                  ),

                  const MenuItem(
                    image: AssetImage('image/VIBES ICON 5.png'),
                    title: 'Vibes',
                  ),

                  // Icebreakers menu item with icon instead of image
                  const MenuItemIcon(
                    icon: Icons.message_outlined,
                    title: 'Icebreakers',
                  ),

                  const MenuItem(
                    image: AssetImage('image/Map pin.png'),
                    title: 'Hotspots',
                  ),
                  const MenuItem(
                    image: AssetImage('image/SETTINGS.png'),
                    title: 'Settings',
                  ),
                  const MenuItem(
                    image: AssetImage('image/Log out.png'),
                    title: 'Sign Out',
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

class MenuItem extends StatelessWidget {
  final ImageProvider image;
  final String title;

  const MenuItem({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Image(
            image: image,
            width: 26,
            height: 26,
            color: Colors.white,
          ),
          const SizedBox(width: 20),
          Text(
            title.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    );
  }
}

// New widget for icon-based menu items
class MenuItemIcon extends StatelessWidget {
  final IconData icon;
  final String title;

  const MenuItemIcon({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Icon(
            icon,
            size: 26,
            color: Colors.white,
          ),
          const SizedBox(width: 20),
          Text(
            title.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    );
  }
}