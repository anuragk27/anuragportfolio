// import 'package:flutter/material.dart';
// import '../widgets/navbar.dart';
// import '../sections/hero.dart';
// import '../sections/about.dart';
// import '../sections/projects.dart';
// import '../sections/skills.dart';
// import '../sections/contact.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: const [
//             HeroSection(),
//             AboutPage(),
//             SkillsPage(),
//             ProjectsPage(),
//             ContactPage(),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../sections/hero.dart';
import '../sections/about.dart';
import '../sections/projects.dart';
import '../sections/skills.dart';
import '../sections/contact.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0A0A),
      body: Stack(
        children: [
          // Scrollable content
          SingleChildScrollView(
            child: Column(
              children: const [
                SizedBox(height: 64), // offset for navbar height
                HeroSection(),
                AboutPage(),
                SkillsPage(),
                ProjectsPage(),
                ContactPage(),
              ],
            ),
          ),

          // Floating glass navbar pinned at top
          const Positioned(top: 0, left: 0, right: 0, child: NavBar()),
        ],
      ),
    );
  }
}
