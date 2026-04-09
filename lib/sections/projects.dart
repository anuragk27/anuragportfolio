import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  final List<Map<String, dynamic>> projects = const [
    {
      'title': 'E-Commerce App',
      'desc':
          'A full-featured Flutter shopping app with Firebase backend, cart, and payments.',
      'tags': ['Flutter', 'Firebase', 'Stripe'],
      'color': Color(0xFF6C63FF),
    },
    {
      'title': 'Chat Application',
      'desc':
          'Real-time chat app using Flutter + Firebase with image sharing and push notifications.',
      'tags': ['Flutter', 'Firebase', 'FCM'],
      'color': Color(0xFF3B82F6),
    },
    {
      'title': 'Portfolio Website',
      'desc': 'This very portfolio — built with Flutter Web, fully responsive.',
      'tags': ['Flutter Web', 'Dart'],
      'color': Color(0xFF10B981),
    },
  ];

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _sectionLabel('Projects'),
          const SizedBox(height: 12),
          const Text(
            'Things I\'ve Built',
            style: TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 48),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: isMobile ? 1 : 3,
              childAspectRatio: isMobile ? 1.6 : 1.1,
              crossAxisSpacing: 24,
              mainAxisSpacing: 24,
            ),
            itemCount: projects.length,
            itemBuilder: (context, i) => _buildProjectCard(projects[i]),
          ),
        ],
      ),
    );
  }

  Widget _buildProjectCard(Map<String, dynamic> project) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A2E),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: (project['color'] as Color).withOpacity(0.15),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.rocket_launch_outlined,
              color: project['color'] as Color,
              size: 22,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            project['title'],
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Text(
              project['desc'],
              style: const TextStyle(
                color: Colors.white54,
                fontSize: 14,
                height: 1.6,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: (project['tags'] as List<String>)
                .map(
                  (tag) => Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      tag,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              _iconLink(Icons.open_in_new, 'Live', () {}),
              const SizedBox(width: 16),
              _iconLink(Icons.code, 'GitHub', () {}),
            ],
          ),
        ],
      ),
    );
  }

  Widget _iconLink(IconData icon, String label, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFF6C63FF), size: 16),
          const SizedBox(width: 4),
          Text(
            label,
            style: const TextStyle(color: Color(0xFF6C63FF), fontSize: 13),
          ),
        ],
      ),
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
