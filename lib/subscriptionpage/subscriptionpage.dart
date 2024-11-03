import 'package:flutter/material.dart';
import 'package:youtube_demo/FilterChipcards/filterchip.dart';
import 'package:youtube_demo/MainVideo/homepage_video.dart';

class Subscriptionpage extends StatefulWidget {
  const Subscriptionpage({super.key});

  @override
  State<Subscriptionpage> createState() => _SubscriptionpageState();
}

class _SubscriptionpageState extends State<Subscriptionpage> {

   final List<String> _list = ['All','Today','Videos','Shorts','Live','Posts','Continue Watching','Unwatched'];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
            SizedBox(
              height: 150,
              child: Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(8),
                       itemCount:10,
                       itemBuilder: (context, index) {
                         return Container(
                          padding: const EdgeInsets.all(8),
                           child: const Column(
                            children: [
                  
                              //image of channel will be placed
                              Stack(
                                children: [ CircleAvatar(
                                  radius: 35,
                                ),
                               Positioned(
                                bottom: 0,
                                right: 0,
                                 child: CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Colors.black,
                                   child: CircleAvatar(
                                      radius: 10,
                                      backgroundColor: Colors.blue,
                                    ),
                                 ),
                               ),
                            ]),
                  
                              SizedBox(height: 10,),
                             
                             //name of channel will be placed here
                              
                              Text('name',style: TextStyle(fontSize: 17,color: Colors.white),),
                             
                  
                            ],
                           ),
                         );
                       },
                    ),
                  ),
              
              
                  //All text button
                  TextButton(onPressed: (){},
                   child: const Text('All'),)
                ],
              ),
            ),
              
              // chips for filter
            // Container(
            //       height: 50,
            //       margin: const EdgeInsets.only(bottom: 10),
            //       child: ListView.builder(
            //         scrollDirection: Axis.horizontal,
            //         itemCount: _list.length,
            //         itemBuilder: (context, index) {
            //           return Container(
            //      padding: const EdgeInsets.all(5),
            //      child: Chip(
            //        label:Text(_list[index],
            //        style:  const TextStyle(
            //          fontSize: 16,
            //        ),
            //        ),),
            //    );
            //         },
            //       ),
            //     ),

           //chips
           //Filter chips
            Filterchip(labels: _list,),
             const SizedBox(height: 10,),
             
             //videos has been called here
             const HomepageVideo(),
             const HomepageVideo(),
             const HomepageVideo(),
             const HomepageVideo(),
             const HomepageVideo(),
             const HomepageVideo(),
             const HomepageVideo(),
             const HomepageVideo(),
             const HomepageVideo(),
             const HomepageVideo(),
              
          ],),
        ),
    
    );
  }
}