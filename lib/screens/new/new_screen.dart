import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/functions/utils_function.dart';
import '../home/bottom_nav_bar_controller.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BottomNavBarController bottomNavBarController = Get.find();
    return WillPopScope(
      onWillPop: () async {
        bottomNavBarController.currentIndex.value = 0;
        bottomNavBarController.pageController.jumpToPage(0);
        UtilsFunction.showToast('Nhấn phím trở lại để thoát');
        return Future.value(false);
      },
      child: const Scaffold(
        body: Center(
          child: Text('New Screen'),
        ),
      ),
    );
  }
}
