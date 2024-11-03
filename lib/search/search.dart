import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => __SearchPageState();
}

class __SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Column(children: [
         Row(
           children: [ 
           IconButton(onPressed: (){
           
           // pop the present screen 
              Navigator.pop(context);
              //dismiss the keyboad from screen
              FocusScope.of(context).unfocus();
            
           }, icon: const Icon(Icons.arrow_back,color: Colors.white,size: 30,)),
           const SizedBox(width: 10,),
           Expanded(
             child: TextField(
              style: const TextStyle(color: Colors.white,
              fontSize: 17
              ),
              decoration: InputDecoration(
               hintText: 'Search YouTube',
               hintStyle:  GoogleFonts.robotoFlex(
                color: Colors.grey,
                fontSize: 17,
               ),
               fillColor: const Color.fromARGB(255, 37, 37, 37),
               filled: true,
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(25),
                 borderSide: const BorderSide(color: Colors.transparent)
                 
               ),
              
              
              ),
             
              
                        ),
           ),
          const SizedBox(width: 10,),
            const CircleAvatar(
             backgroundColor: Color.fromARGB(255, 37, 37, 37),
              child: Icon(Icons.mic,color: Colors.white,size: 30,),
             
            ),
        ]),
        ],),
      ),
    );
  }
}