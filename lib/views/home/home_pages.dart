import 'package:flutter/material.dart';
import 'package:shopping_tracker/views/home/nav_bar.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NavBar(),
    );
  }
}
