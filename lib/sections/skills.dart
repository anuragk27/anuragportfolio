import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  final List<Map<String, dynamic>> skills = const [
    {'name': 'Flutter', 'level': 0.9, 'icon': Icons.phone_android},
    {'name': 'Dart', 'level': 0.85, 'icon': Icons.code},
    {'name': 'Firebase', 'level': 0.75, 'icon': Icons.local_fire_department},
    {'name': 'REST APIs', 'level': 0.8, 'icon': Icons.cloud_outlined},
    {'name': 'Git & GitHub', 'level': 0.85, 'icon': Icons.merge_type},
    {'name': 'UI/UX Design', 'level': 0.7, 'icon': Icons.design_services},
  ];

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;

    return Container(
      width: double.infinity,
      color: const Color(0xFF0D0D0D),
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : 80,
        vertical: 80,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _sectionLabel('Skills'),
          const SizedBox(height: 12),
          const Text(
            'What I Work With',
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
              crossAxisCount: isMobile ? 1 : 2,
              childAspectRatio: isMobile ? 5 : 4,
              crossAxisSpacing: 24,
              mainAxisSpacing: 24,
            ),
            itemCount: skills.length,
            itemBuilder: (context, index) => _buildSkillCard(skills[index]),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillCard(Map<String, dynamic> skill) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A2E),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Icon(
                skill['icon'] as IconData,
                color: const Color(0xFF6C63FF),
                size: 22,
              ),
              const SizedBox(width: 10),
              Text(
                skill['name'],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              Text(
                '${((skill['level'] as double) * 100).toInt()}%',
                style: const TextStyle(color: Color(0xFF6C63FF), fontSize: 14),
              ),
            ],
          ),
          const SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: skill['level'],
              minHeight: 6,
              backgroundColor: Colors.white10,
              valueColor: const AlwaysStoppedAnimation<Color>(
                Color(0xFF6C63FF),
              ),
            ),
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
