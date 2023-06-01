import 'package:finance_app/components/widgets/fab.dart';
import 'package:finance_app/pages/home_page.dart';
import 'package:finance_app/pages/profile_page.dart';
import 'package:finance_app/pages/rewards_page.dart';
import 'package:finance_app/pages/trade_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'news_page.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  // Bottom NavBar Functionality
  int _selectedIndex = 0;

  // Selected Icon Method
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Different Screens
  final screens = [
    const HomePage(),
    const TradePage(),
    const NewsPage(),
    const RewardsPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25.0),
            child: Icon(Icons.search, color: Colors.black),
          ),
        ],
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        title: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'lib/assets/images/funds.png',
                    width: 40,
                  ),
                  const SizedBox(width: 10),
                  Text('INVST',
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ],
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stacked_line_chart_rounded),
            label: 'Trade',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper_rounded),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard_rounded),
            label: 'Rewards',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: 'Profile',
          ),
        ],

        // Bottom NavBar Functionality
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.shade400,
        showUnselectedLabels: false,
        onTap: _onItemTapped,
      ),

      // Floating Action Button
      floatingActionButton: const FAB(),

      // Screen Navigation
      body: screens[_selectedIndex],
    );
  }
}
