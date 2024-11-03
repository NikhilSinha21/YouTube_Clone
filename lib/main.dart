import 'package:flutter/material.dart';
import 'package:youtube_demo/VideoPlay/videoplaypage.dart';

void main() {
  runApp(const YouTube());
}

class YouTube extends StatelessWidget{
  const YouTube({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black,
        elevation: 0,
        
      ),
     
      ),
    home: const Videoplaypage(),

   );
  }
}