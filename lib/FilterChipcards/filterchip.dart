import 'package:flutter/material.dart';

class Filterchip extends StatefulWidget {
  final List<String> labels;
  const Filterchip({super.key,required this.labels});

  @override
  State<Filterchip> createState() => _FilterchipState();
}

class _FilterchipState extends State<Filterchip> {

  @override
  Widget build(BuildContext context) {
    return 
          SizedBox(
           height: 50,
           child: ListView.builder(
             itemCount: widget.labels.length,
             scrollDirection: Axis.horizontal,
             
             itemBuilder: (BuildContext context,int index){
               return Container(
                 padding: const EdgeInsets.all(5),
                 child: Chip(
                   label:Text(widget.labels[index],
                   style: const TextStyle(
                     fontSize: 16,
                   ),
                   ),),
               );
             },),
          );
  }
}