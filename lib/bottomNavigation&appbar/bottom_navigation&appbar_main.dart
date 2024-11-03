import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_demo/homepage/homepage.dart';
import 'package:youtube_demo/notificationpage/notificationpage.dart';
import 'package:youtube_demo/search/search.dart';
import 'package:youtube_demo/settings/settingspage.dart';
import 'package:youtube_demo/shorts/shortspage.dart';
import 'package:youtube_demo/subscriptionpage/subscriptionpage.dart';
import 'package:youtube_demo/youpage/youpage.dart';
 

class BottomNavigationAppbar extends StatefulWidget {
  const BottomNavigationAppbar({super.key});

  @override
  State<BottomNavigationAppbar> createState() => _BottomNavigationAppbarState();
}

class _BottomNavigationAppbarState extends State<BottomNavigationAppbar> {
  var _selectedIndex = 0;

  // Expanded list of widgets to cover all bottom navigation items
  final List<Widget> _widget = const [
    Homepage(),
    Shortspage(), // Ensure this page is defined
    Center(child: Text("Add",style: TextStyle(color: Colors.white),)), // Placeholder for the Add page
    Subscriptionpage(),
    Youpage(), // Placeholder for the Profile page
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _selectedIndex == 1 ? null:   AppBar(
          title: 
          _selectedIndex == 4 ? null 
          : Row(
            children: [
              SizedBox(
                width: 70,
                child: Image.asset('assets/images/youtube_logo.png'),
              ),
              Text(
                'YouTube',
                style: GoogleFonts.robotoMono(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.cast_connected_outlined),
              iconSize: 30,
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Notificationpage()),
                );
              },
              icon: const Icon(Icons.notification_add_outlined),
              iconSize: 30,
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SearchPage()),
                );
              },
              icon: const Icon(Icons.search),
              iconSize: 30,
              color: Colors.white,
            ),

             if(_selectedIndex == 4)
               IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Settingpage()));
                },
                icon: const Icon(Icons.settings),
                iconSize: 30,
                color: Colors.white,
                           ),
             
             
            
          ],
        ),
        body: Center(child: _widget[_selectedIndex]),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: const TextStyle(color: Colors.white),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.ondemand_video),
              label: 'Shorts',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline, size: 50),
              label: 'Add',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions),
              label: 'Subscriptions',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'You',
              backgroundColor: Colors.black,
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
