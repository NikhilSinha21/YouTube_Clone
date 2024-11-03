import 'package:flutter/material.dart';

class ShortsButtons extends StatefulWidget {
 // final VoidCallback onPressed ;
  final Icon icon ;
  final String text;
  const ShortsButtons({super.key, required this.icon, required this.text});

  @override
  State<ShortsButtons> createState() => _ShortsButtonsState();
}

class _ShortsButtonsState extends State<ShortsButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: (){
          
        }, icon: widget.icon,iconSize: 32,color: Colors.white,),
        const SizedBox(height: 5,),
        Text(widget.text,style: const TextStyle(color: Colors.white,fontSize: 17),),
        
      ],
    );
  }
}