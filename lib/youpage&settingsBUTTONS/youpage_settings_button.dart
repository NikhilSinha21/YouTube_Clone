
import 'package:flutter/material.dart';

class YoupageButton extends StatefulWidget {
  final Icon icon;
   final String text;
   final VoidCallback ontap;
  const YoupageButton({super.key, required this.icon, required this.text, required this.ontap});
  

  @override
  State<YoupageButton> createState() => _YoupageButtonState();
}

class _YoupageButtonState extends State<YoupageButton> {

   double size = 22; // Both size of Text and Icon is been controlled by here
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
       widget.ontap();
      },
      child: Container(
        width: double.infinity,
        color: Colors.black,
        padding: const EdgeInsets.symmetric(vertical: 10),
        
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(widget.icon.icon,color: Colors.white,size: size,),
        
            const SizedBox(width: 15,),
        
            Text(widget.text,style: TextStyle(color: Colors.white,fontSize: size),)
          ],
        ),
      ),
    );
  }
}