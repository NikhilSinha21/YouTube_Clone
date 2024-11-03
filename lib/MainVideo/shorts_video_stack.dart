import 'package:flutter/material.dart';
import 'package:youtube_demo/shorts/shorts_buttons.dart';

class ShortsVideoStack extends StatefulWidget {
  const ShortsVideoStack({super.key});

  @override
  State<ShortsVideoStack> createState() => _ShortsVideoStackState();
}

class _ShortsVideoStackState extends State<ShortsVideoStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            AspectRatio(
              aspectRatio: 9/16,
              child: Image.asset('assets/images/image2.jpg'),
              ),

              //logo of channel
             const Positioned(
                bottom: 15,
                left: 15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                        ),
                        
                         SizedBox(width: 10,),
                         //name of Channel
                         Text('@pingpongmaster',style: TextStyle(fontSize: 18,color: Colors.white),),

                         //TODO add subscribe button
            
                      ],
                    ),
                    SizedBox(height: 10,),
                     //name of the video
                           Text('How to make attackers cry #pingpong \n#tabletennis',style: TextStyle(fontSize: 20,color: Colors.white),),

                  ],
                ),
              ),

               Positioned(
                right: 5,
                bottom: 15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                    //Shorts_button page
                    const  ShortsButtons( icon: Icon(Icons.thumb_up),text: '31M',),
                    const  ShortsButtons( icon: Icon(Icons.thumb_down),text: 'Dislike',),
                    const  ShortsButtons( icon: Icon(Icons.comment),text: '445',),
                    const  ShortsButtons( icon: Icon(Icons.share),text: 'share',),
                    const  ShortsButtons( icon: Icon(Icons.recycling),text: '300',),



                      Container(
                        height: 50,
                        width: 50,
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.black,
                        ),
                      ),
                   ],
              )),
          ],
        ),
      ),
    );
  }
}