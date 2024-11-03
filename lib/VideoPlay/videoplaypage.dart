import 'package:flutter/material.dart';
import 'package:youtube_demo/FilterChipcards/filterchips_youpage.dart';
import 'package:youtube_demo/MainVideo/homepage_video.dart';

class Videoplaypage extends StatefulWidget {
  const Videoplaypage({super.key});

  @override
  State<Videoplaypage> createState() => _VideoplaypageState();
}

class _VideoplaypageState extends State<Videoplaypage> {

  final List<Icon>  _icons = const [Icon(Icons.thumb_up_alt_outlined),Icon(Icons.share_outlined),Icon(Icons.download_outlined),Icon(Icons.bookmark_outline),Icon(Icons.flag_outlined)];
  final List<String>  _list = const ['77K','Share','Download','Save','Report'];
  final _textstyle = const TextStyle(
                       fontSize: 17,
                      color: Color.fromARGB(255, 187, 187, 187)
                                     );

  final _stylewhite = const TextStyle(
                                           fontSize: 20,
                                           fontWeight: FontWeight.bold,
                                           color: Colors.white
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
        
           Expanded(
             child: Container(
              
              decoration: const BoxDecoration(
                color:  Color.fromARGB(255, 53, 53, 53),
                borderRadius: BorderRadius.only(topLeft:Radius.circular(15),topRight:Radius.circular(15),)
              ),
               child: SingleChildScrollView(
                 child: Column(
                   children: [
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
                           
                                Row(
                                      children: [
                                       const CircleAvatar(
                                    radius: 25,
                                  ),
                                  const SizedBox(width: 10,),
                                   
                                     Text('7clouds',
                                               style:  _stylewhite
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
                                    ), 
                        ]  ),
                     ),
                        const SizedBox(height: 5,),
                                      
                        FilterchipsYoupage(labels: _list , icons: _icons),
                            
                         const SizedBox(height: 10,),
                            
                         Container(
                          height: 100,
                          margin: const EdgeInsets.only(left: 8,right: 8,bottom: 10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 27, 27, 27),
                            borderRadius: BorderRadius.circular(16),
                          ),
                           
                           child: Stack(
                            children: [
                              Positioned(
                                top: 10,
                                left: 10,
                                child: Text('Comments',style: _stylewhite ,)),
                             
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
                           ),
                         ),
                        const SizedBox(height: 10,),

                        for(int i=0;i<=5;i++)
                           const HomepageVideo(),
                         
                   ],
                 ),
               ),
             ),
           ),

          ],
        ),
      ),
    );
  }
}