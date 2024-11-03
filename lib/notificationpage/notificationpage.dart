import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_demo/FilterChipcards/filterchip.dart';
import 'package:youtube_demo/bottomNavigation&appbar/appbar_second.dart';
import 'package:youtube_demo/notificationpage/notification_test.dart';

class Notificationpage extends StatefulWidget {
  const Notificationpage({super.key});

  @override
  State<Notificationpage> createState() => _NotificationpageState();
}

class _NotificationpageState extends State<Notificationpage> {

  final List<String> _chipName = ['All','Mentions'];
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: const AppbarSecond(text: 'Notifications',),
          body: Container(
             padding: const EdgeInsets.all(5),
            child: Column( crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              
              //Chips

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

              //Chips 
              //filter chips
              Filterchip(labels: _chipName),
            const SizedBox(height: 10,),
            
                  
            //notifications 
            //Today Notification text
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                
                
                  //Important Notification Text
                  Container( padding: const EdgeInsets.all(5),
                      child: Text('Important',style: GoogleFonts.roboto(color: const Color.fromARGB(255, 189, 189, 189),fontSize: 17),)),
                    const SizedBox(height: 10,),
                
                

                //find Test file in notification_test.dart
                   const Test(),
                    const Test(),
                     const Test(),
                      const Test(),
                       const Test(),
                        const Test(),
                         const Test(),
                          const Test(),
                           const Test(),
                            const Test(),
                             const Test(),
                              const Test(),
                               const Test(),
                                const Test(),
                                 const Test(),
                                  const Test(),
                                   const Test(),
                                    const Test(),
                                     const Test(),
                
                
                
                     //This Week Notification text
                    Container( padding: const EdgeInsets.all(5),
                      child: Text('This Week',style: GoogleFonts.roboto(color: const Color.fromARGB(255, 189, 189, 189),fontSize: 17),)),
                     const SizedBox(height: 10,),
                
                      //Older Notification text
                    Container( padding: const EdgeInsets.all(5),
                      child: Text('Older',style: GoogleFonts.roboto(color: const Color.fromARGB(255, 189, 189, 189),fontSize: 17),)),
                     const SizedBox(height: 10,),
                ],),
              ),
            ),
            
            
            ],),
          ),
      ),
    );
  }
}