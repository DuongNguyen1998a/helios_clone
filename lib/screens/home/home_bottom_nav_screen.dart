import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Widgets
import '../home/widgets/bottom_nav_bar.dart';
import 'bottom_nav_bar_controller.dart';

class HomeBottomNavScreen extends StatelessWidget {
  const HomeBottomNavScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BottomNavBarController bottomNavController =
        Get.put(BottomNavBarController());

    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: bottomNavController.pageController,
          onPageChanged: (newValue) {
            bottomNavController.onPageChanged(newValue);
          },
          children: bottomNavController.pages,
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
