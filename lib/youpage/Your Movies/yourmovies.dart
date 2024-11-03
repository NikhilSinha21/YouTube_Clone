
import 'package:flutter/material.dart';
import 'package:youtube_demo/bottomNavigation&appbar/appbar_second.dart';

class Yourmovies extends StatefulWidget {
  const Yourmovies({super.key});

  @override
  State<Yourmovies> createState() => _YourmoviesState();
}

class _YourmoviesState extends State<Yourmovies> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: AppbarSecond(text: ''),
        body: Placeholder(),
      )
    );
  }
}