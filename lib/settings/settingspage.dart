
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Settingpage extends StatefulWidget {
  const Settingpage({super.key});

  @override
  State<Settingpage> createState() => _SettingpageState();
}

class _SettingpageState extends State<Settingpage> {

  final _style = GoogleFonts.roboto(color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                );


  final divider  =  const Divider(
                                  height: 20, // Space above and below the divider
                                  thickness: 2, // Thickness of the line
                                  color: Color.fromARGB(255, 69, 69, 69), 
                         );              
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
          
                  //back button
                  IconButton(onPressed: (){
                     // pop the present screen 
                        Navigator.pop(context);
                        }, icon: const Icon(Icons.arrow_back,color: Colors.white,size: 30,)),
          
                 const SizedBox(width: 15,),
           
                  Text('Settings',
                  style:_style,)      
                ],
              ),
              
          //TODO Make all the Buttons Down There Chickable
              // Container(
              //   margin: const EdgeInsets.all(5),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Text('Account',style: _style,),
              //          const SizedBox(height: 10,),
              //          // buttons
              //            const YoupageButton(icon: Icon(Icons.settings, color: Colors.white), text: 'General'),
              //               const SizedBox(height: 10,),
              //            const  YoupageButton(icon: Icon(Icons.account_box_outlined, color: Colors.white), text: 'Switch account'),
              //               const SizedBox(height: 10,),        
              //            const YoupageButton(icon: Icon(Icons.person_outline, color: Colors.white), text: 'Family Center'),
              //               const SizedBox(height: 10,),         
              //            const  YoupageButton(icon: Icon(Icons.notifications_active_outlined, color: Colors.white), text: 'Notifications'),
              //               const SizedBox(height: 10,),         
              //            const YoupageButton(icon: Icon(Icons.label_outlined, color: Colors.white), text: 'Purchases and memberships'),
              //               const SizedBox(height: 10,),        
              //            const  YoupageButton(icon: Icon(Icons.monetization_on_outlined, color: Colors.white), text: 'Billing and payments'),
              //               const SizedBox(height: 10,),        
              //            const YoupageButton(icon: Icon(Icons.arrow_circle_right_rounded, color: Colors.white), text: 'Manage all history'),
              //               const SizedBox(height: 10,),         
              //            const  YoupageButton(icon: Icon(Icons.shield, color: Colors.white), text: 'Your data in YouTube'),
              //               const SizedBox(height: 10,),        
              //            const YoupageButton(icon: Icon(Icons.lock_outline, color: Colors.white), text: 'Privacy'),
              //               const SizedBox(height: 10,),         
              //            const  YoupageButton(icon: Icon(Icons.join_left_outlined, color: Colors.white), text: 'Connected apps'),
              //               const SizedBox(height: 10,),        
              //            const YoupageButton(icon: Icon(Icons.new_releases_outlined, color: Colors.white), text: 'Try experimental new features'),
              //               const SizedBox(height: 10,), 


              //            divider,


              //                const SizedBox(height: 10,),
              //            Text('Video and audio preferences',style: _style,),
              //                const SizedBox(height: 10,),


              //             const YoupageButton(icon: Icon(Icons.hd_outlined, color: Colors.white), text: 'Video quality preferences'),
              //               const SizedBox(height: 10,),
              //            const  YoupageButton(icon: Icon(Icons.play_arrow_outlined, color: Colors.white), text: 'Playback'),
              //               const SizedBox(height: 10,),        
              //            const YoupageButton(icon: Icon(Icons.closed_caption_outlined, color: Colors.white), text: 'Captions'),
              //               const SizedBox(height: 10,),         
              //            const  YoupageButton(icon: Icon(Icons.bar_chart_outlined, color: Colors.white), text: 'Data saving'),
              //               const SizedBox(height: 10,),         
              //            const YoupageButton(icon: Icon(Icons.download_outlined, color: Colors.white), text: 'Downloads'),
              //               const SizedBox(height: 10,),        
              //            const  YoupageButton(icon: Icon(Icons.chat_bubble, color: Colors.white), text: 'Live chat'),
              //               const SizedBox(height: 10,),        
              //            const YoupageButton(icon: Icon(Icons.man_2_outlined, color: Colors.white), text: 'Accessiblity'),
              //               const SizedBox(height: 10,),         
              //            const  YoupageButton(icon: Icon(Icons.tv_outlined, color: Colors.white), text: 'Watch on TV'),
              //               const SizedBox(height: 10,),  

              //            divider,


              //              const SizedBox(height: 10,),
              //             Text('Help and policy',style: _style,),
              //              const SizedBox(height: 10,),


              //            const YoupageButton(icon: Icon(Icons.hd_outlined, color: Colors.white), text: 'General'),
              //               const SizedBox(height: 10,),
              //            const  YoupageButton(icon: Icon(Icons.play_arrow_outlined, color: Colors.white), text: 'Switch account'),
              //               const SizedBox(height: 10,),        
              //            const YoupageButton(icon: Icon(Icons.closed_caption_outlined, color: Colors.white), text: 'Family Center'),
              //               const SizedBox(height: 10,),         
              //            const  YoupageButton(icon: Icon(Icons.bar_chart_outlined, color: Colors.white), text: 'Notifications'),
              //               const SizedBox(height: 10,),         
              //            const YoupageButton(icon: Icon(Icons.download_outlined, color: Colors.white), text: 'Purchases and memberships'),
              //               const SizedBox(height: 10,),

              //                 divider,

              //                  const SizedBox(height: 10,),
              //             Text('Developer preferences',style: _style,),
              //              const SizedBox(height: 10,),


                        
              //     ],
              //   ),
              // ),
                
                
            ],
          ),
        ),
      ),
    );
  }
}