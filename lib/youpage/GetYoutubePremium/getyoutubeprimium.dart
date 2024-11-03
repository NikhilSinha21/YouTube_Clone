import 'package:flutter/material.dart';
import 'package:youtube_demo/bottomNavigation&appbar/appbar_second.dart';

class Getyoutubeprimium extends StatefulWidget {
  const Getyoutubeprimium({super.key});

  @override
  State<Getyoutubeprimium> createState() => _GetyoutubeprimiumState();
}

class _GetyoutubeprimiumState extends State<Getyoutubeprimium> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      appBar: AppbarSecond(text: 'Get Youtube Premium'),
      body: Placeholder(),
    ));
  }
}