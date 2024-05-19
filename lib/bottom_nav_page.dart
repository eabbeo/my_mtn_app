import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_mtn_app/bottom_navs/home.dart';
import 'package:my_mtn_app/bottom_navs/momo.dart';
import 'package:my_mtn_app/bottom_navs/profile.dart';
import 'package:my_mtn_app/bottom_navs/services.dart';
import 'package:my_mtn_app/bottom_navs/shop.dart';
import 'package:my_mtn_app/utils/colors.dart';

class BootomNav extends StatefulWidget {
  const BootomNav({super.key});

  @override
  State<BootomNav> createState() => _BootomNavState();
}

class _BootomNavState extends State<BootomNav> {
  int activePage = 0;
  //
  List<Widget> pages = [];

  @override
  void initState() {
    super.initState();
    pages.add(
      const MyApp(),
    );
    pages.add(
      const Shop(),
    );
    pages.add(
      const Services(),
    );
    pages.add(
      const Momo(),
    );
    pages.add(
      const Profile(),
    );
    pages.add(
      const MyApp(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
        body: IndexedStack(
          index: activePage,
          children: pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            bottomNavOptions("assets/bottom_nav_images/home.svg", "Home"),
            bottomNavOptions("assets/bottom_nav_images/shop.svg", "Home"),
            bottomNavOptions("assets/bottom_nav_images/services.svg", "Home"),
            bottomNavOptions("assets/bottom_nav_images/momo.svg", "Home"),
            bottomNavOptions("assets/bottom_nav_images/profile.svg", "Home"),
          ],
          currentIndex: activePage,
          onTap: _onTapped,
          selectedItemColor: blackColor,
          unselectedItemColor: blackColor,
          showUnselectedLabels: true,
        ),
      ),
    );
  }

  BottomNavigationBarItem bottomNavOptions(String imgUrl, String labelText) {
    return BottomNavigationBarItem(
        icon: SvgPicture.asset(imgUrl), label: labelText);
  }

  //
  void _onTapped(int index) {
    setState(() {
      activePage = index;
    });
  }
  //
}
