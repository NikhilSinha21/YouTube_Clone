import 'package:flutter/material.dart';

class Videodetail extends StatefulWidget {
  const Videodetail({super.key});

  @override
  State<Videodetail> createState() => _VideodetailState();
}

class _VideodetailState extends State<Videodetail> {
   final _textstyle = const TextStyle(
                       fontSize: 17,
                      color: Color.fromARGB(255, 187, 187, 187)
                                     );

  final stylewhite = const TextStyle(
                                           fontSize: 20,
                                           fontWeight: FontWeight.bold,
                                           color: Colors.white
                                           );  
  @override
  Widget build(BuildContext context) {
    return    Padding(
                       padding: const EdgeInsets.all(10),
                       child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                          const Text('Virat Kohli\nBowled',
                                   style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 24,fontWeight: FontWeight.bold),
                                                  ),
                           Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Text('1.6 crore views',
                                               style: _textstyle,
                                               ),
                     
                     
                                      Text('  ',
                                               style: _textstyle
                                               ),              
                               
                                      Text('1 yr ago',
                                               style: _textstyle,
                                               ),
                     
                                       Text('  ',
                                               style: _textstyle
                                               ), 
                     
                     
                                      Text('#byebyebye',
                                               style: _textstyle,
                                               ), 
                     
                                                  
                     
                                     GestureDetector( onTap: (){
                                      print("clicked");
                                     },
                                       child: const  Text(' ...more',
                                                 
                                                 style:  TextStyle(
                                                 fontSize: 17,
                                                 fontWeight: FontWeight.bold,
                                                 color: Colors.white,
                                                 ),
                                                 ),
                                      
                                     ),  
                     
                                                   
                             ],
                           ),
                            
                            const SizedBox(height: 10,),



                            // Channel logo, channel name , total subscribe, subscribe button

                            const _Subscribecolumn(),
                           
                        ]  ),
                     );
  }
}




class _Subscribecolumn extends StatefulWidget {
  // ignore: unused_element
  const _Subscribecolumn({super.key});

  @override
  State<_Subscribecolumn> createState() => _SubscribecolumnState();
}

class _SubscribecolumnState extends State<_Subscribecolumn> {

   final _textstyle = const TextStyle(
                       fontSize: 17,
                      color: Color.fromARGB(255, 187, 187, 187)
                                     );

  final stylewhite = const TextStyle(
                                           fontSize: 20,
                                           fontWeight: FontWeight.bold,
                                           color: Colors.white
                                           ); 
  @override
  Widget build(BuildContext context) {
    return 
                                Row(
                                      children: [
                                       const CircleAvatar(
                                    radius: 25,
                                  ),
                                  const SizedBox(width: 10,),
                                   
                                     Text('7clouds',
                                               style:  stylewhite
                                               ),  
                     
                                  const SizedBox(width: 10,),
                                    
                                     Text('2.5 crore',
                                               style: _textstyle,
                                               ), 
                     
                                      const Spacer(),
                                        Chip(
                                        backgroundColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(25),
                                        ),
                                        label: const Text('Subscribe',style: TextStyle(color: Colors.black,fontSize: 17),)),
                                       
                                      ],
                                    );
  }
}