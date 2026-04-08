import 'package:flutter/material.dart';
// import 'pages/home.dart';
// import 'pages/about.dart';
// import 'pages/projects.dart';
// import 'pages/contact.dart';
import '../sections/AboutPage.dart';
import '../sections/ProjectsPage.dart';
import '../sections/SkillsPage.dart';
import '../sections/ContactPage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}
