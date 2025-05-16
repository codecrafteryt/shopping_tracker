/*
  ---------------------------------------
  Project: Braelo Mobile Application
  Date: Jun 5, 2024
  Author: Ameer Salman
  ---------------------------------------
  Description: Navigation Bar with simple logic.
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_tracker/utils/values/my_color.dart';
import 'package:shopping_tracker/views/account/account.dart';
import 'package:shopping_tracker/views/cart/cart.dart';
import 'package:shopping_tracker/views/explore/explore.dart';
import 'package:shopping_tracker/views/home/home.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  final List<Widget> _children = [
    const Home(),
    const Explore(),
    const Cart(),
    const Account(),
  ];

  // Function to handle bottom navigation bar taps
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: MyColors.white,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        selectedItemColor: MyColors.green,
        unselectedItemColor: const Color.fromRGBO(120, 130, 138, 1),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home',),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: 'Cart',),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: 'Account',),
        ],
      ),
    );
  }
}
