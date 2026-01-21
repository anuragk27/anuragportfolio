import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blueGrey[50],
      title: const Text(
        'Portfolio',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      actions: [
        // navButton(context, 'Home', '/'),
        navButton(context, 'Projects', '/projects'),
        navButton(context, 'About', '/about'),
        navButton(context, 'Contact', '/contact'),
      ],
    );
  }

  Widget navButton(BuildContext context, String title, String route) {
    return TextButton(
      onPressed: () => Navigator.pushNamed(context, route),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
