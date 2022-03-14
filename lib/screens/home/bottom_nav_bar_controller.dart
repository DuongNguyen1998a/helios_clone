import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:helios_clone/screens/category/category_screen.dart';

import '../account/account_screen.dart';
import '../new/new_screen.dart';
/// Screens
import 'home_screen.dart';

class BottomNavBarController extends GetxController {
  var currentIndex = 0.obs;
  PageController pageController = PageController(initialPage: 0);
  var pages = [
    const HomeScreen(),
    const CategoryScreen(),
    const NewScreen(),
    const AccountScreen(),
  ];

  void onPageChanged(value) {
    currentIndex(value);
  }
}
