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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Home section
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: const AssetImage('assets/images/image.png'),
                    backgroundColor: Colors.transparent,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Hi, I’m Anurag Kumar',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Flutter Developer | Web & Mobile',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24, color: Colors.black54),
                  ),
                ],
              ),
            ),
            const Divider(height: 2),

            // About section
            sectionContainer(
              title: 'About',
              child: const Text(
                'I am Anurag Kumar, a Computer Science Engineer with a deep-rooted passion for building clean, scalable applications. My journey began with curiosity about how the web works, and today I enjoy turning ideas into polished digital experiences.

I specialize in Full-Stack Development and have a strong interest in Cloud Computing. I believe great software is about more than code—it is about understanding users and delivering delightful experiences.',
                style: TextStyle(fontSize: 18, height: 1.5),
                textAlign: TextAlign.justify,
              ),
            ),
            const Divider(height: 2),

            // Projects section
            sectionContainer(
              title: 'Projects',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  projectItem('Portfolio Website', 'A responsive Flutter web portfolio with custom animations and project showcases.'),
                  SizedBox(height: 12),
                  projectItem('Mobile Task App', 'A cross-platform task manager built with Flutter and Firebase integration.'),
                ],
              ),
            ),
            const Divider(height: 2),

            // Skills section
            sectionContainer(
              title: 'Skills',
              child: Wrap(
                spacing: 12,
                runSpacing: 12,
                children: const [
                  skillChip('Flutter'),
                  skillChip('Dart'),
                  skillChip('Firebase'),
                  skillChip('REST APIs'),
                  skillChip('UI/UX Design'),
                  skillChip('Git'),
                ],
              ),
            ),
            const Divider(height: 2),

            // Contact section
            sectionContainer(
              title: 'Contact',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Email: anurag@example.com', style: TextStyle(fontSize: 18)),
                  SizedBox(height: 8),
                  Text('Phone: +91 12345 67890', style: TextStyle(fontSize: 18)),
                  SizedBox(height: 8),
                  Text('Location: India', style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget sectionContainer({required String title, required Widget child}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          child,
        ],
      ),
    );
  }

  static Widget projectItem(String title, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
        const SizedBox(height: 8),
        Text(description, style: const TextStyle(fontSize: 18, height: 1.4)),
      ],
    );
  }

  static Widget skillChip(String label) {
    return Chip(
      label: Text(label, style: const TextStyle(fontSize: 16)),
      backgroundColor: Colors.blueGrey[50],
    );
  }
}
