
import 'package:flutter/material.dart';
import 'package:youtube_demo/MainVideo/shorts_video_stack.dart';

class Shortspage extends StatefulWidget {
  const Shortspage({super.key});

  @override
  State<Shortspage> createState() => _ShortspageState();
}

class _ShortspageState extends State<Shortspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  PageView.builder(  // scrollable page
        itemCount: 5,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              //TODO phause video and show options
            },
            onDoubleTap: () {
              //TODO like the video
            },
            child: const ShortsVideoStack()
          );
        },
      ),
    ) ;
  }
}