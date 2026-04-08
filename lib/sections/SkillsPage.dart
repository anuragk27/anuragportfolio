import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[50],
        title: const Text('Projects'),
      ),
      body: const Center(child: Text('Skills', style: TextStyle(fontSize: 24))),
    );
  }
}
