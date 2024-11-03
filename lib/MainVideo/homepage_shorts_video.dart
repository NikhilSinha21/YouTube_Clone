import 'package:flutter/material.dart';

class HomepageShortsVideo extends StatefulWidget {
  const HomepageShortsVideo({super.key});

  @override
  State<HomepageShortsVideo> createState() => _HomepageShortsVideoState();
}

class _HomepageShortsVideoState extends State<HomepageShortsVideo> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 4,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 9 / 16,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            children: [ AspectRatio(
              aspectRatio: 9/16,
              child: Image.asset('assets/images/image2.jpg'),
              ),

              Positioned(
                                  bottom: 5,
                                  child: Container(
                                  padding: const EdgeInsets.all(3),
                                  child: const Text('How to make attackers cry\n#pingpong #tabletennis',style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),),
                                  )),


          const  Positioned(
                                  top: 5,
                                  right: 5,
                                  child: Icon(Icons.more_vert_outlined,color: Color.fromARGB(255, 183, 183, 183),),)
        
          ]),
        );
      },
    );
  }
}
