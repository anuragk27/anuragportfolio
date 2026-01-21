import 'package:flutter/material.dart';
import '../widgets/navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: NavBar(),
      ),
      body:
          // Image.asset('assets/images/image.png', fit: BoxFit.cover),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // --- CLIP OVAL FOR CIRCULAR IMAGE ---
                // ClipOval(
                //   child: Image.asset(
                //     'assets/images/image.png',
                //     width: 300,
                //     height:
                //         300, // width & height must be equal for a perfect circle
                //     fit: BoxFit.cover,
                //     filterQuality: FilterQuality.high,
                //   ),
                // ),

                // CIRCLE AVATAR FOR CIRCULAR IMAGE
                CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/images/image.png'),
                  backgroundColor: Colors.transparent,
                ),

                const SizedBox(height: 5), // Space between image and text

                const Text(
                  'Hi, I’m Anurag kumar',
                  style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                const Text(
                  // Add the flutter icon here
                  'Flutter Developer | Web & Mobile',
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
          ),
    );
  }
}
