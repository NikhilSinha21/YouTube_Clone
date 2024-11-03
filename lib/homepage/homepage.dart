
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_demo/FilterChipcards/filterchip.dart';
import 'package:youtube_demo/MainVideo/homepage_shorts_video.dart';
import 'package:youtube_demo/MainVideo/homepage_video.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<String> _chipName= ['All','Shorts','Videos','Unwatched','Watched','Recently uploaded','Live'];
  
  
  
    @override
  Widget build(BuildContext context) {
    return  Scaffold( 
      
    body: SingleChildScrollView(
      child: Column( //Main column
      children: [
         //list view having the chip 
        
          // SizedBox(
          //  height: 50,
          //  child: ListView.builder(
          //    itemCount: _chipName.length,
          //    scrollDirection: Axis.horizontal,
             
          //    itemBuilder: (BuildContext context,int index){
          //      return Container(
          //        padding: const EdgeInsets.all(5),
          //        child: Chip(
          //          label:Text(_chipName[index],
          //          style: const TextStyle(
          //            fontSize: 16,
          //          ),
          //          ),),
          //      );
          //    },),
          // ),

          Filterchip(labels: _chipName,),
        const SizedBox(height: 10,),
      
        //videos , there name , channel name , views , channel logo , more button for video
    
        //Find HomepageVideo class in homepage_video.dart
         const HomepageVideo(),
          const HomepageVideo(),
           const HomepageVideo(),
            const HomepageVideo(),
             const HomepageVideo(),
              const HomepageVideo(),
               const HomepageVideo(),
                const HomepageVideo(),
                 const HomepageVideo(),
      
           const SizedBox(height: 10,),
           
           //youtube shorts 
      Container(
        padding: const EdgeInsets.only(top: 10,bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
        
            //youtube shorts logo
            SizedBox(
              height: 70,
              child: Image.asset('assets/images/youtube_shorts.png'),),
              //youtube shorts name 
              Text('Shorts',
              style: GoogleFonts.robotoFlex(
                color: Colors.white,
                fontSize: 22,
              ),),
              
             const Spacer(),
              const Icon(Icons.more_vert_outlined,color: Colors.white,size: 22)
          ],
        ),
      ),
      //youtube shorts videos
            //add youtube shots video here 
            //when video is clicked it will move to the shorts section 
            //where we can scroll the video to see reels
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: const HomepageShortsVideo()),
         

        const SizedBox(height: 50,),

        /// Mix or Playlist
        
      
      ],
      ),
    ),
    
    );
  }
}