import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas1_mobile_11pplg1_28/controllers/bottom_nav_controller.dart';
import 'package:pas1_mobile_11pplg1_28/pages/menus/favorite.dart';
import 'package:pas1_mobile_11pplg1_28/pages/menus/home.dart';
import 'package:pas1_mobile_11pplg1_28/pages/menus/profile.dart';
import 'package:pas1_mobile_11pplg1_28/widgets/my_color_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavController bottomNavController = Get.find();

    final List<Widget> menus = [Home(), Favorite(), Profile()];

    return Obx(() {
      return Scaffold(
        body: menus[bottomNavController.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: colorBackground,
          currentIndex: bottomNavController.selectedIndex.value,
          selectedItemColor: colorWhite,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
          unselectedItemColor: menuColor,
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
          onTap: bottomNavController.changeIndexMenu,
          items: [
            BottomNavigationBarItem(
              icon: bottomNavController.selectedIndex.value == 0
                  ? Icon(Icons.home_rounded)
                  : Icon(Icons.home_outlined),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: bottomNavController.selectedIndex.value == 1
                  ? Icon(Icons.favorite_rounded)
                  : Icon(Icons.favorite_outline_rounded),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: bottomNavController.selectedIndex.value == 2
                  ? Icon(Icons.person_rounded)
                  : Icon(Icons.person_outline),
              label: "Profile",
            ),
          ],
        ),
      );
    });
  }
}
