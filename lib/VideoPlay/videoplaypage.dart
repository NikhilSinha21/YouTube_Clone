import 'package:flutter/material.dart';

class Videoplaypage extends StatefulWidget {
  const Videoplaypage({super.key});

  @override
  State<Videoplaypage> createState() => _VideoplaypageState();
}

class _VideoplaypageState extends State<Videoplaypage> {
  final _textstyle = const TextStyle(
                       fontSize: 17,
                      color: Color.fromARGB(255, 187, 187, 187)
                                     );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Stack(
              children: [
                AspectRatio(aspectRatio: 16/9,
                child: Image.asset('assets/images/thumbnail.jpg'),
        
                )
        
                
                //TODO on video edits
              ],
            ),
        
           Padding(
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
                   children: [
                     Text('1.6 crore views',
                                     style: _textstyle,
                                     ),


                            Text('   ',
                                     style: _textstyle
                                     ),              
                     
                            Text('1 yr ago',
                                     style: _textstyle,
                                     ),
                   ],
                 ),

              ]  ),
           ),
          ],
        ),
      ),
    );
  }
}