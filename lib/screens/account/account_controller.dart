import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helios_clone/screens/home/bottom_nav_bar_controller.dart';

class AccountController extends GetxController {
  BottomNavBarController navBarController = Get.find();
  var wareHouses = ['HCM', 'Hà Nội', 'Phú Quốc', 'Thủ Đức'];
  var defaultValueRadio = 'HCM'.obs;

  void openDialog() {
    Get.defaultDialog(
      title: 'Chọn khu vực',
      content: Column(
        children: wareHouses
            .map(
              (item) => Obx(
                () => RadioListTile(
                  title: Text(item),
                  value: item,
                  groupValue: defaultValueRadio.value,
                  onChanged: (val) {
                    defaultValueRadio.value = val.toString();
                    Get.back();
                    navBarController.pageController.jumpToPage(0);
                  },
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
