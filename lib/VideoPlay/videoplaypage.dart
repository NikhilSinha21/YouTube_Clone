import 'package:flutter/material.dart';
import 'package:youtube_demo/FilterChipcards/filterchips_youpage.dart';
import 'package:youtube_demo/MainVideo/homepage_video.dart';
import 'package:youtube_demo/VideoPlay/Comments/comment_videoplay.dart';
import 'package:youtube_demo/VideoPlay/videoDetail/videodetail.dart';

class Videoplaypage extends StatefulWidget {
  const Videoplaypage({super.key});

  @override
  State<Videoplaypage> createState() => _VideoplaypageState();
}

class _VideoplaypageState extends State<Videoplaypage> {

  final List<Icon>  _icons = const [Icon(Icons.thumb_up_alt_outlined),Icon(Icons.share_outlined),Icon(Icons.download_outlined),Icon(Icons.bookmark_outline),Icon(Icons.flag_outlined)];
  final List<String>  _list = const ['77K','Share','Download','Save','Report'];
                                   
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
                    
                    //details
                   const Videodetail(),
               
               
               
                        const SizedBox(height: 5,),
               
                         //like,dislike,save ...... all buttons             
                        FilterchipsYoupage(labels: _list , icons: _icons),
                            
                         const SizedBox(height: 10,),
                            
                       
               
                       //Comment section
                       const CommentVideoplay(),
                        const SizedBox(height: 10,),
               
               
               
                       //videos 
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







