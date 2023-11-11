// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/screens/categories/category_screen.dart';
import 'package:food_app/screens/home/home_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNavigation extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const BottomNavigation({Key? key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation>
    with SingleTickerProviderStateMixin {
  TabController? controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  int currentIndex = 0;
  List<bool> textVisibility = [true, true, true, true];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller,
        children: [
          const HomeScreen(),
          const CategoriesScreen(),
          Container(), // Add your Favourite screen widget here
          Container(), // Add your More screen widget here
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        backgroundColor: const Color.fromARGB(255, 220, 217, 217),
        items: [
          _buildNavItem("assest/images/home.svg", "Home", 0),
          _buildNavItem("assest/images/Category.svg", "Categories", 1),
          _buildNavItem("assest/images/Heart.svg", "Favourite", 2),
          _buildNavItem("assest/images/more_vertical.svg", "More", 3),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
            textVisibility = [true, true, true, true];
            textVisibility[index] = false;
          });
          controller?.animateTo(index); // Switch to the selected tab
        },
      ),
    );
  }

  Widget _buildNavItem(String assetPath, String text, int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          assetPath,
          color: currentIndex == index
              ? const Color.fromARGB(223, 224, 180, 32)
              : Colors.black,
          height: 30,
        ),
        if (textVisibility[index])
          Text(
            text,
            style: TextStyle(
              color: currentIndex == index ? const Color.fromARGB(223, 224, 180, 32) : Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w200,
            ),
          ),
      ],
    );
  }
}
