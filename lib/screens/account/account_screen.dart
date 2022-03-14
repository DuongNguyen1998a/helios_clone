import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helios_clone/screens/account/account_controller.dart';
import 'package:helios_clone/screens/login/login_screen.dart';
import 'package:helios_clone/utils/functions/utils_function.dart';

import '../home/bottom_nav_bar_controller.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BottomNavBarController bottomNavBarController = Get.find();
    AccountController accountController = Get.put(AccountController());

    return WillPopScope(
      onWillPop: () async {
        bottomNavBarController.currentIndex.value = 0;
        bottomNavBarController.pageController.jumpToPage(0);
        UtilsFunction.showToast('Nhấn phím trở lại để thoát');
        return Future.value(false);
      },
      child: Scaffold(
          body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
            top: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundColor: Colors.black87,
                child: Icon(
                  Icons.person,
                  size: 80,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(
                    () => const LoginScreen(),
                    transition: Transition.rightToLeft,
                    duration: const Duration(milliseconds: 500),
                  );
                },
                child: const Text('Đăng ký/ Đăng nhập'),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: const [
                      Text('0'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Yêu thích')
                    ],
                  ),
                  Column(
                    children: const [
                      Text('0'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Đã đặt')
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(
                        () => const LoginScreen(),
                        transition: Transition.rightToLeft,
                        duration: const Duration(milliseconds: 500),
                      );
                      UtilsFunction.showToast(
                          'Vui lòng đăng nhập để sử dụng tính năng.');
                    },
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey.withOpacity(0.2),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: const Icon(
                            Icons.person,
                            color: Colors.blue,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text('Tài khoản'),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey.withOpacity(0.2),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text('Yêu thích'),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  accountController.openDialog();
                },
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.yellowAccent,
                      ),
                      padding: const EdgeInsets.all(10),
                      child: const Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Obx(
                      () => Text(
                          'Vị trí kho: ${accountController.defaultValueRadio.value}'),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black87,
                    ),
                    padding: const EdgeInsets.all(10),
                    child: const Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text('Chính sách quyền riêng tư')
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
