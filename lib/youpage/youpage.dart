
import 'package:flutter/material.dart';
import 'package:youtube_demo/FilterChipcards/filterchips_youpage.dart';
import 'package:youtube_demo/youpage&settingsBUTTONS/youpage_settings_button.dart';
import 'package:youtube_demo/youpage/GetYoutubePremium/getyoutubeprimium.dart';
import 'package:youtube_demo/youpage/Your%20Movies/yourmovies.dart';
import 'package:youtube_demo/youpage/YourDownloads/yourdownloads.dart';
import 'package:youtube_demo/youpage/YourVideo/yourvideospage.dart';
import 'package:youtube_demo/MainVideo/youpage_video.dart';

class Youpage extends StatefulWidget {
  const Youpage({super.key});

  @override
  State<Youpage> createState() => _YoupageState();
}

class _YoupageState extends State<Youpage> {
 final List<String>  _list = const ['Switch account','Google Account','Turn on Incognito','Share Channel'];
 final List<Icon>  _iconList = const [Icon(Icons.switch_account), Icon(Icons.account_circle), Icon(Icons.visibility_off), Icon(Icons.share),];


 //History and Playlist text
   
  final textstyle = const TextStyle(
               color: Colors.white,
               fontSize: 22,
               fontWeight: FontWeight.bold);
  
  final divider = const Divider(
                     height: 20, // Space above and below the divider
                     thickness: 2, // Thickness of the line
                     color: Color.fromARGB(255, 69, 69, 69), // Color of the line
                     );
        

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 10,right: 10,top: 10),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        
              //Profile picture ,Channel name, Email id , Text[view channel]
              GestureDetector(
                onTap: () {
                  //TODO open user channel 
                },
        
                 //Profile picture ,Channel name, Email id , Text[view channel]
                child: const Row(
                  children: [
                    // profile picture 
                    CircleAvatar(
                      radius: 35,
                    ),
                    SizedBox(width: 10,),
                    
                    //Channel name , Email id , Text[View Channel]
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                
                        //Channel name
                        Text('Channel Name',style: TextStyle(fontSize: 25,color: Colors.white),),
                
                            Row(
                              children: [
                
                                //Email id , Text[view Channel]
                                Text('@pingpongmaster',style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 196, 195, 195)),),
                                   Text(' · View Channel >',style: TextStyle(fontSize: 16,color: Colors.grey),),
                              ],
                            ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15,),


               //Chips 
        
              // SizedBox(
              //   height: 50,
              //   child: ListView.builder(
              //     scrollDirection: Axis.horizontal,
              //     itemCount: _list.length,
              //     itemBuilder: (context ,index){
              //       return Container(
              //         margin: const EdgeInsets.all(5),
              //         child: Chip(
              //           backgroundColor: const Color.fromARGB(255, 35, 35, 35),
                        
              //           label: Row(children: [
              //             Icon(_iconList[index].icon,color: Colors.white,),
              //             const SizedBox(width: 8,),
              //             Text(_list[index],style: const TextStyle(fontSize: 18,color: Colors.white),)
              //           ],),
              //           shape: RoundedRectangleBorder(
              //              borderRadius: BorderRadius.circular(25),
              //              side: const BorderSide(
              //               color: Color.fromARGB(255, 35, 35, 35),
              //              )
              //           ),
              //           ),
              //       );
              //     }
              //   ),
              // ),

              //Chips
              //Filter Chips YouPage
              FilterchipsYoupage(labels: _list, icons: _iconList),
        
               const SizedBox(height: 20,),
               // History section 
              Column(
                children: [
        
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                      //History text
                        Text('History',style: textstyle,),
                      
                      //View all chip
                       Chip(
                        backgroundColor: Colors.black,
                        label: const Text('View all',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),),
                     ],
                   ),
                  const SizedBox(height: 10,),
                   
                ],
               ),
                   

                  /////////////////////////////////////////////////////////////////////////////////////////
                   //youpageVideo is imported from youpageVideo class
                   const YoupageVideo(),
                
               const SizedBox(height: 10,),
        
             Row(
               children: [
                     Text('Playlist',style: textstyle),
                    
                    const Spacer(),
                    IconButton(onPressed: () {
                     //TODO make page to add playlist
                   },icon:const Icon(Icons.add,size: 30,color: Colors.white,)),
        
        
        
                     Chip(
                        backgroundColor: Colors.black,
                        label: const Text('View all',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),),
        
               ],
             ),
        
       
                const SizedBox(height: 10,),

            /////////////////////////////////////////////////////////////////////////////
            //youpageVideo is imported from youpageVideo class
                const YoupageVideo(),
  
                 const SizedBox(height: 10,),

                 // buttons 

                 //Your video button
                 //send to your video page
                 YoupageButton(
                  icon: const Icon(Icons.play_arrow,
                   color: Colors.white),
                    text: 'Your Video',
                    ontap: (){
                      Navigator.push(
                        context,MaterialPageRoute(
                          builder: (context)=>const Yourvideos(),
                          )
                          );
                          }),
                      
                      //Your Download button
                 //send to your Download page

                 YoupageButton(
                  icon: const Icon(Icons.download,
                   color: Colors.white), 
                   text: 'Download',
                   ontap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Yourdownloads()));
                   },
                   ),

                   //Your Courses button
                 //send to your YourCourses page
                
                  YoupageButton(
                    icon: const Icon(
                      Icons.lightbulb,
                     color: Colors.white),
                      text: 'Your Courses',
                      ontap: () {
                        
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Yourdownloads()));
                      },),
               
                //devider is used to divide between two sets of button
                 divider,

                
                // buttons
                
                  //Your Movies button
                 //send to your Yourmovies page

                YoupageButton(
                  icon: const Icon(
                    Icons.movie_creation_outlined, 
                    color: Colors.white
                    ), 
                    text: 'Your Movies',
                    ontap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Yourmovies()));
                    },
                    ),

                      //Your Courses button
                 //send to your YourCourses page
                  YoupageButton(
                  icon: const Icon(
                    Icons.monetization_on_outlined,
                     color: Colors.white
                     ),
                      text: 'Get Youtube Premium',
                      ontap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>const Getyoutubeprimium()));
                      },
                      ),
                 
                //devider is used to divide between two sets of button
                  divider,
                  
                 //buttons
                  YoupageButton(
                    icon: const Icon(
                      Icons.bar_chart,
                       color: Colors.white
                       ),
                        text: 'Time Watched',
                        ontap: (){
                          //TODO make a page 
                          
                        },
                        ),
                 YoupageButton(
                  icon: const Icon(
                    Icons.help_outline, 
                    color: Colors.white),
                     text: 'Help and Feedback',
                     ontap: (){
                      //TODO make a page
                     },
                     ),
                 
                // //devider is used to divide between two sets of button
                //  divider,
            ],
          ),
        ),
      )
    );
  }
}