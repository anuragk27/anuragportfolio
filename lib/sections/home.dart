import 'package:flutter/material.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HeroSection(),
            AboutPage(),
            SkillsPage(),
            ProjectsPage(),
            ContactPage(),
          ],
        ),
      ),
    );
  }
}
