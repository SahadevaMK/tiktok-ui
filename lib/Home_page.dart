import 'package:flutter/material.dart';
import 'package:tiktok_ui/pages/home.dart';
import 'package:tiktok_ui/pages/inbox.dart';
import 'package:tiktok_ui/pages/profile.dart';
import 'package:tiktok_ui/pages/reels.dart';
import 'package:tiktok_ui/pages/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _SelectedIndex = 0;
  void _NavigateBottomBar(int index){
    setState(() {
      _SelectedIndex = index;
    });
  }

  final List<Widget> _pages =[
   HomeScreen(),
    SearchPage(),
    ReelScreen(),
    InboxScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_SelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _SelectedIndex,
        onTap: _NavigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon:Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon:Icon(Icons.search),label: 'Search'),
          BottomNavigationBarItem(icon:Icon(Icons.add_box),label: ''),
          BottomNavigationBarItem(icon:Icon(Icons.chat_bubble_outline_rounded),label: 'Inbox'),
          BottomNavigationBarItem(icon:Icon(Icons.person),label: 'Profile'),
        ],
      ),
    );
  }
}
