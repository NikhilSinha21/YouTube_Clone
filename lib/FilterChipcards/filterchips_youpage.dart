import 'package:flutter/material.dart';

class FilterchipsYoupage extends StatefulWidget {
  final List<String> labels;
  final List<Icon> icons;
  const FilterchipsYoupage({super.key, required this.labels, required this.icons});

  @override
  State<FilterchipsYoupage> createState() => _FilterchipsYoupageState();
}

class _FilterchipsYoupageState extends State<FilterchipsYoupage> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.labels.length,
                  itemBuilder: (context ,index){
                    return Container(
                      margin: const EdgeInsets.all(5),
                      child: Chip(
                        backgroundColor: const Color.fromARGB(255, 35, 35, 35),
                        
                        label: Row(children: [
                          Icon(widget.icons[index].icon,color: Colors.white,),
                          const SizedBox(width: 8,),
                          Text(widget.labels[index],style: const TextStyle(fontSize: 18,color: Colors.white),)
                        ],),
                        shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(25),
                           side: const BorderSide(
                            color: Color.fromARGB(255, 35, 35, 35),
                           )
                        ),
                        ),
                    );
                  }
                ),
              );
  }
}