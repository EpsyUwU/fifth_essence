import 'package:fifth_essence/display/screens/calendary/calendary.dart';
import 'package:fifth_essence/display/screens/post/post.dart';
import 'package:fifth_essence/display/screens/streams/streams.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key, required this.title});

  final String title;

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int pagenumber = 0;

  List pages = <Widget>[
    const Calendary(),
    const Streams(),
    const Post(),
  ];

  void onItemTapped(int index) {
    setState(() {
      pagenumber = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:
          Text(widget.title, style: const TextStyle(color: Colors.white)),
        ),
        body: pages[pagenumber],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // Añade esta línea
          backgroundColor: const Color(0xFF392755),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined),
              label: 'Calendary',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.stream_outlined),
              label: 'Strems',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_post_office_outlined),
              label: 'Post',
            ),
          ],
          currentIndex: pagenumber,
          onTap: onItemTapped,
          selectedItemColor: Color(0xFF9C58CB),
          unselectedItemColor: Color(0xFF9C58CB),
        ),
    );
  }
}