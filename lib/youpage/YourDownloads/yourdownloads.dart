import 'package:flutter/material.dart';
import 'package:youtube_demo/bottomNavigation&appbar/appbar_second.dart';

class Yourdownloads extends StatefulWidget {
  const Yourdownloads({super.key});

  @override
  State<Yourdownloads> createState() => _YourdownloadsState();
}

class _YourdownloadsState extends State<Yourdownloads> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
      appBar: AppbarSecond(text: 'Downloads'),
      body: Placeholder(),
    ));
  }
}