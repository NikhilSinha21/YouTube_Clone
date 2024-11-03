import 'package:flutter/material.dart';
import 'package:youtube_demo/bottomNavigation&appbar/appbar_second.dart';

class Yourcourses extends StatefulWidget {
  const Yourcourses({super.key});

  @override
  State<Yourcourses> createState() => _YourcoursesState();
}

class _YourcoursesState extends State<Yourcourses> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
         appBar: AppbarSecond(text: 'Your Courses'),
         body: Placeholder(),
    ));
  }
}