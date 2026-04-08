import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blueGrey[50],
      // Centered title row containing the name and navigation buttons
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Anurag Kumar',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
              color: const Color.fromARGB(255, 106, 106, 107),
              // fontStyle: FontStyle.italic,
            ),
          ),
          const SizedBox(width: 16.0), // Margin between name and first button
          navButton(context, 'Projects'),
          const SizedBox(width: 16.0), // Margin between buttons
          navButton(context, 'Skills'),
          const SizedBox(width: 16.0), // Margin between buttons
          navButton(context, 'About'),
          const SizedBox(width: 16.0), // Margin between buttons
          navButton(context, 'Contact'),
        ],
      ),
    );
  }

  /// Creates a navigation button for the app bar.
  ///
  /// This uses a no-op callback because the app is currently a single-page layout
  /// with no active route navigation.
  Widget navButton(BuildContext context, String title) {
    return TextButton(
      onPressed: () {},
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
