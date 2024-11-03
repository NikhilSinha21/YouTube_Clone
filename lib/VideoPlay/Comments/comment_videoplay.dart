import 'package:flutter/material.dart';

class CommentVideoplay extends StatefulWidget {
  const CommentVideoplay({super.key});

  @override
  State<CommentVideoplay> createState() => _CommentVideoplayState();
}

class _CommentVideoplayState extends State<CommentVideoplay> {
  @override
  Widget build(BuildContext context) {
    return  Container(
                          height: 100,
                          margin: const EdgeInsets.only(left: 8,right: 8,bottom: 10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 27, 27, 27),
                            borderRadius: BorderRadius.circular(16),
                          ),
                           
                           child: const Stack(
                            children: [
                              Positioned(
                                top: 10,
                                left: 10,
                                child: Text('Comments',style: TextStyle(
                                           fontSize: 20,
                                           fontWeight: FontWeight.bold,
                                           color: Colors.white
                                           ),)),
                             
                              const Positioned(
                                bottom: 15,
                                left: 10,
                                child:    Row(
                                  children: [
                                     CircleAvatar(
                                        radius: 20,
                                      ),
                                   
                                   SizedBox(width: 10,),
                            
                                   Text('Comments',style: TextStyle(
                                                 fontSize: 17,
                                                 fontWeight: FontWeight.bold,
                                                 color: Colors.white,
                                                 ),),
                                  ],
                                ),
                                  )
                            ],
                           ));
  }
}