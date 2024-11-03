import 'package:flutter/material.dart';
import 'package:youtube_demo/FilterChipcards/filterchip.dart';
import 'package:youtube_demo/bottomNavigation&appbar/appbar_second.dart';

class Yourvideos extends StatefulWidget {
  const Yourvideos({super.key});

  @override
  State<Yourvideos> createState() => _YourvideosState();
}

class _YourvideosState extends State<Yourvideos> {
 final List<String> _list = ['Videos','Shorts','Live']; 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const AppbarSecond(text: '',), //Appbar second imported from AppBarSecond page
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const SizedBox(height: 10,),
             const Text('Your Videos',style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),
          
           // Chip
           //Filter chip
              Filterchip(labels: _list),
      
      
      
              //TODO Allot of thins are left to be done
             const Placeholder(),
            ],
          ),
        ),
        ),
    );
  }
}