import 'package:flutter/material.dart';

class YoupageVideo extends StatefulWidget {
  const YoupageVideo({super.key});

  @override
  State<YoupageVideo> createState() => _YoupageVideoState();
}

class _YoupageVideoState extends State<YoupageVideo> {
  @override
  Widget build(BuildContext context) {
    return 
                SizedBox(
                  height: 180,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context,index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,
                            padding: const EdgeInsets.all(5),
                            
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Stack(
                                children: [ 
                                  AspectRatio(
                                  
                                  aspectRatio: 16/9,
                                  
                                  child: Image.asset('assets/images/thumbnail.jpg',fit: BoxFit.cover,),
                                  ),
        
                                 Positioned(
                                  bottom: 5,
                                  right: 5,
                                  child: Container(
                                  padding: const EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Text('3:00',style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),),
                                  ))
        
                                
                         ] ),
                            ),
                          ),
        
                         Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Container(
                              padding: const EdgeInsets.all(5),
                               child: const Text('Virat Kohli\nBowled',
                                            style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15),
                                          ),
                             ),
                          
                            IconButton(onPressed: (){
                              //TODO to add thee dot
                            }, icon: const Icon(Icons.more_vert,size: 20,color: Colors.white,)),
                           ],
                         ),
                        const Text('Playbeat',
                                   style: TextStyle(
                                   fontSize: 15,
                                   color: Color.fromARGB(255, 187, 187, 187)
                                  ),
                                  ),
                        ],
                      );
                      }
                      ),
                  );
  }
}