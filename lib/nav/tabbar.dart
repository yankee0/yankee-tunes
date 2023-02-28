import 'package:flutter/material.dart';
import 'package:yankee_tunes/views/library.dart';
import 'package:yankee_tunes/views/profile.dart';

import '../views/home.dart';
import '../views/search.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) {
          setState(() {
            _selectedTab = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note_outlined),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: 'Profile',
          ),
        ],
      ),
      body: Stack(
        children: [
          renderView(0 , const Home()),
          renderView(1 , const Search()),
          renderView(2 , const Library()),
          renderView(3 , const Profile()),
        ],
      ),
    );
  }

  IgnorePointer renderView(int viewIndex,Widget view) {
    return IgnorePointer(
          ignoring: _selectedTab != viewIndex,
          child: Opacity(
            opacity: _selectedTab == viewIndex ? 1 : 0,
            child: view,
          ),
        );
  }
}
