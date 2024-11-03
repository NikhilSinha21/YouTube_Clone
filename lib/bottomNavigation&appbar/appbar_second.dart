import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_demo/search/search.dart';

 
 class AppbarSecond extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  const AppbarSecond({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        
            //Back button
           leading:  IconButton(onPressed: (){
                 // pop the present screen 
                    Navigator.pop(context);
                 }, icon: const Icon(Icons.arrow_back,color: Colors.white,size: 30,)),
        
            title:  Text( text,
            style: GoogleFonts.roboto(  
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
        
            actions: [
        
              //casting button
             IconButton(onPressed: (){}, 
             icon: const Icon(Icons.cast_connected_outlined ,
              size: 30,
              color: Colors.white,),),
        
              //search button
              IconButton(onPressed: (){
        
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchPage()));
              }, 
             icon: const Icon(Icons.search ,
              size: 30,
              color: Colors.white,),),
        
              //More button / three dot button
             PopupMenuButton(
              color: const Color.fromARGB(255, 37, 37, 37),
              iconColor: Colors.white,
              iconSize: 30,
              itemBuilder: (context) => const [
        
                //settings
                PopupMenuItem(child:  Text('Settings',style: TextStyle(color: Colors.white,fontSize: 17),)),
                
                //Watch on tv
                PopupMenuItem(child:  Text('Watch on TV',style: TextStyle(color: Colors.white,fontSize: 17),)),
                
                //Terms and privacy policy
                PopupMenuItem(child: Text('Terms and privacy policy',style: TextStyle(color: Colors.white,fontSize: 17),)),
                
                //Help and feedback
                PopupMenuItem(child: Text('Help and feedback',style: TextStyle(color: Colors.white,fontSize: 17),)),
              ] ),
        
              
        
            ],
          );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}