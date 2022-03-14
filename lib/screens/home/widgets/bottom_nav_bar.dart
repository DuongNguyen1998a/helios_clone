import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helios_clone/screens/home/bottom_nav_bar_controller.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BottomNavBarController bottomNavController =
        Get.put(BottomNavBarController());

    return Obx(
      () => BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Trang chủ',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Danh mục',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Tin tức',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Tài khoản',
          ),
        ],
        currentIndex: bottomNavController.currentIndex.value,
        unselectedItemColor: Colors.grey.withOpacity(0.8),
        selectedItemColor: Colors.orange,
        onTap: (val) {
          bottomNavController.onPageChanged(val);
          bottomNavController.pageController.jumpToPage(
            val,
          );
        },
        backgroundColor: Colors.white,
      ),
    );
  }
}
