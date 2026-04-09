import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;

    return Container(
      width: double.infinity,
      color: const Color(0xFF111111),
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : 80,
        vertical: 80,
      ),
      child: isMobile
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildText(),
                const SizedBox(height: 40),
                _buildAvatar(),
              ],
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: _buildText()),
                const SizedBox(width: 60),
                _buildAvatar(),
              ],
            ),
    );
  }

  Widget _buildText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _sectionLabel('About Me'),
        const SizedBox(height: 16),
        const Text(
          'Passionate Flutter Developer',
          style: TextStyle(
            color: Colors.white,
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'I\'m Anurag, a Flutter developer with a passion for building '
          'beautiful, performant mobile and web applications. I love clean '
          'architecture, great UI/UX, and writing maintainable code.',
          style: TextStyle(color: Colors.white60, fontSize: 16, height: 1.8),
        ),
        const SizedBox(height: 16),
        const Text(
          'When I\'m not coding, you\'ll find me exploring new tech, '
          'contributing to open source, or sketching UI ideas.',
          style: TextStyle(color: Colors.white60, fontSize: 16, height: 1.8),
        ),
        const SizedBox(height: 32),
        _buildInfoRow(Icons.location_on_outlined, 'India'),
        const SizedBox(height: 8),
        _buildInfoRow(Icons.school_outlined, 'B.Tech Computer Science'),
        const SizedBox(height: 8),
        _buildInfoRow(Icons.work_outline, 'Open to opportunities'),
      ],
    );
  }

  Widget _buildAvatar() {
    return Container(
      width: 260,
      height: 260,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: const LinearGradient(
          colors: [Color(0xFF6C63FF), Color(0xFF3B82F6)],
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF6C63FF).withOpacity(0.4),
            blurRadius: 40,
            spreadRadius: 5,
          ),
        ],
      ),
      child: const Icon(Icons.person, size: 120, color: Colors.white70),
      // Replace Icon with your actual image:
      // child: ClipOval(child: Image.asset('assets/profile.jpg', fit: BoxFit.cover)),
    );
  }

  Widget _buildInfoRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: const Color(0xFF6C63FF), size: 20),
        const SizedBox(width: 10),
        Text(text, style: const TextStyle(color: Colors.white70, fontSize: 15)),
      ],
    );
  }

  Widget _sectionLabel(String text) {
    return Text(
      text.toUpperCase(),
      style: const TextStyle(
        color: Color(0xFF6C63FF),
        fontSize: 13,
        letterSpacing: 3,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
