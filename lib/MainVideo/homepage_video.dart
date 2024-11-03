import 'package:flutter/material.dart';
import 'package:youtube_demo/VideoPlay/videoplaypage.dart';

class HomepageVideo extends StatefulWidget {
  const HomepageVideo({super.key});

  @override
  State<HomepageVideo> createState() => _HomepageVideoState();
}

class _HomepageVideoState extends State<HomepageVideo> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(bottom: 25),
      child: GestureDetector(
            //TODO added gesturedetector for time beeing 
                                  //TODO open page if any video is clicked
           onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>Videoplaypage()));
           },
        child: Container(
          color: Colors.black12,
          child: Column(
             children: [
                      
             //video , time(how long video is)
              Stack(
                children: [
                 //video
                 AspectRatio(
                 aspectRatio: 16/9,
                 child: Image.asset('assets/images/thumbnail.jpg'),
                ),
                 
                 //time
                Positioned(
                 bottom: 5,
                 right: 5,
                  child: Container( 
                  decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(5),
                   color: Colors.black.withOpacity(0.7), ),
                          
                   child: const Padding(
                     padding:  EdgeInsets.all(4),
                     child:  Text('8:24',
                     style: TextStyle(
                       color: Colors.white,
                     ),
                     ),
                   ),
                  ),
                ),
              ] ),
                      
             const SizedBox(height: 10,),
             //   channel name , views , channel logo , more button for video,name of video
            Row(
             mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 //logo of channel
              Container(
               padding: const EdgeInsets.only(left: 5),
               height: 40,
                child: const CircleAvatar(
                 radius: 20,
                ),
              ),
             const SizedBox(width: 10,),
                        
              //name of video
             const Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [ 
                 // video name
                  Text('Virat Kohli Bowled',
                                 style: TextStyle(
                  color: Colors.white,
                  fontSize: 20),
                                 ),
                  //name of Channel
                 Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                 Text('Playbeat',
                 style: TextStyle(
                    fontSize: 15,
                   color: Color.fromARGB(255, 187, 187, 187)
                 ),
                 ),
                        
                  Text(' · ',
                 style: TextStyle(
                    fontSize: 17,
                   color: Color.fromARGB(255, 187, 187, 187)
                 ),
                 ),
                        
                 //total views
                  Text('23 lakh views',
                 style: TextStyle(
                   fontSize: 15,
                   color: Color.fromARGB(255, 187, 187, 187)
                 ),
                 ), 
                 Text(' · ',
                 style: TextStyle(
                    fontSize: 17,
                   color: Color.fromARGB(255, 187, 187, 187)
                 ),
                        
                 //how many times ago video was uploaded
                 ), Text('1 year ago',
                 style: TextStyle( 
                   fontSize: 15,
                   color: Color.fromARGB(255, 187, 187, 187)
                 ),
                 ),
              ],)
                ] ),
                        
                //Icon for more button
              const Spacer(),//to put icon in the corner
             const Icon(Icons.more_vert,color: Colors.white,),
              ]),
             ],
            ),
        ),
      ),
    );
  }
}