import 'package:bottomstreet/UI/BottomNavBarPages/home.dart';
import 'package:bottomstreet/UI/BottomNavBarPages/news.dart';
import 'package:bottomstreet/UI/BottomNavBarPages/profile.dart';
import 'package:bottomstreet/UI/BottomNavBarPages/watchlist.dart';
import 'package:flutter/material.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentindex = 0;
  final pages = [
    Home(),
    News(),
    WatchList(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: TitledBottomNavigationBar(
          indicatorColor: Colors.black,
            activeColor: Colors.black,
            inactiveColor: Colors.black87,
            currentIndex:
                currentindex, // Use this to update the Bar giving a position
            onTap: (index) {
              setState(() {
                currentindex = index;
              });
            },
            items: [
              TitledNavigationBarItem(title: Text('Home'), icon: Icons.home),
              TitledNavigationBarItem(title: Text('News'), icon: Icons.receipt),
              TitledNavigationBarItem(
                  title: Text('Watchlist'), icon: Icons.star),
              TitledNavigationBarItem(
                  title: Text('Profile'), icon: Icons.perm_identity),
            ]),
        body: pages[currentindex],
      ),
    );
  }
}
