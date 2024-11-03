

//here i have made the notification pannel 
//where logo of channel , name of channel , time , it's thumbnail , more option has been created
import 'package:flutter/material.dart';


class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row( crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
      
      //channel logo
        CircleAvatar(child: Image.asset('assets/images/image.jpg'),),
         const SizedBox(width: 10,),
      //video Name and how many times ago video was uploaded
       const  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        // video name
           Text('Virat \n Kohli \n Bowled ',
           style: TextStyle(
           color: Colors.white,
           fontSize: 18),
           ),
         Text('5 Hours ago',
      style: TextStyle(
         fontSize: 15,
        color: Color.fromARGB(255, 187, 187, 187)
      ),
      ),
    
      
      ],),
     const Spacer(),
      Container(
        height: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        clipBehavior: Clip.antiAlias,
        child: AspectRatio(
          aspectRatio: 16/9,
          child: Image.asset('assets/images/thumbnail.jpg'),
         ),
      ),
  
          //TODO Creat a three dot 

     ],);
  }
}