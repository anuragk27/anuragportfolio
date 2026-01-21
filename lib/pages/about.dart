import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.blueGrey[50],title: const Text('About')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: RichText(
          textAlign: TextAlign.justify,
          text: TextSpan(
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black,
              height: 1.5,
            ),
            children: [
              // Heading
              const TextSpan(
                text:
                    "Bridging the gap between complex problems and elegant solutions.\n\n",
                style: TextStyle(fontStyle: FontStyle.italic,fontSize: 28, fontWeight: FontWeight.bold),
              ),

              // Normal text
              const TextSpan(
                text:
                    "I am Anurag Kumar, a Computer Science Engineer with a deep-rooted passion for software development and systems design.\n"
                    "My journey in tech started with a curiosity about how the web works, which evolved into a career dedicated to building robust, scalable applications.\n\n",
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 22, fontWeight: FontWeight.w100),
              ),

              // Sub heading
              const TextSpan(
                text: "Areas of Expertise\n\n",
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 22, fontWeight: FontWeight.w600),
              ),

              const TextSpan(
                text:
                    "I specialize in Full-Stack Development and have a keen interest in Cloud Computing.\n"
                    "I believe that great software isn't just about writing code; it’s about understanding the user's needs and creating a hooking experience.\n\n"
                    "Currently, I am focused on mastering Microservices and Machine Learning to build tools that make a tangible impact.",
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 22, fontWeight: FontWeight.w100),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
