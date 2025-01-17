import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stroll/src/config/constants/app_color.dart';
import 'package:stroll/src/config/constants/asset.dart';
import 'package:stroll/src/modules/home/view.dart';

class CustomBottomNavigation extends StatefulWidget {
  static const routeName = "bottomNav";
  const CustomBottomNavigation({super.key});

  @override
  _CustomBottomNavigationState createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State {
  int _selectedTab = 0;

  final List _pages = [
    const Home(),
    const Placeholder(),
    const Placeholder(),
    const Placeholder(),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(AppColor.primaryColor),
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: const Color(AppColor.primaryColor),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppAssets.poker),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppAssets.bonfire),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppAssets.chat),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppAssets.user),
            label: "",
          ),
        ],
      ),
    );
  }
}
