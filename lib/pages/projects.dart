import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.blueGrey[50],title: const Text('Projects')),
      body: const Center(
        child: Text(
          'Projects',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
