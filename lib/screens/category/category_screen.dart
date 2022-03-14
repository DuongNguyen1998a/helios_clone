import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helios_clone/screens/cart/cart_screen.dart';
import 'package:helios_clone/screens/home/bottom_nav_bar_controller.dart';
import 'package:helios_clone/utils/functions/utils_function.dart';

import 'category_controller.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CategoryController categoryController = Get.put(CategoryController());
    BottomNavBarController bottomNavBarController = Get.find();

    return WillPopScope(
      onWillPop: () async {
        bottomNavBarController.currentIndex.value = 0;
        bottomNavBarController.pageController.jumpToPage(0);
        UtilsFunction.showToast('Nhấn phím trở lại để thoát');
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      child: const Icon(
                        Icons.app_blocking,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey.withOpacity(0.2),
                          ),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            const Expanded(
                              child: Text(
                                'Máy khoan',
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                Get.to(
                                      () => const CartScreen(),
                                  transition: Transition.rightToLeft,
                                  duration: const Duration(milliseconds: 500),
                                );
                              },
                              icon: const Icon(Icons.shopping_cart),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Obx(
                        () => Container(
                          width:
                              !categoryController.isExpanded.value ? 75 : 145,
                          color: Colors.grey.withOpacity(0.2),
                          padding: const EdgeInsets.all(10),
                          child: ListView.builder(
                            itemCount: 8,
                            itemBuilder: (context, index) => Obx(
                              () => InkWell(
                                onTap: () {
                                  categoryController.changeIndex(index);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: categoryController
                                                .indexOfCategory.value ==
                                            index
                                        ? Colors.white
                                        : null,
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/ct1.png',
                                        width:
                                            !categoryController.isExpanded.value
                                                ? 55
                                                : 70,
                                        height: 70,
                                      ),
                                      !categoryController.isExpanded.value
                                          ? const SizedBox()
                                          : const SizedBox(
                                              width: 8,
                                            ),
                                      !categoryController.isExpanded.value
                                          ? const SizedBox()
                                          : Text('Item ${index + 1}'),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Obx(
                                    () => IconButton(
                                      onPressed: () {
                                        categoryController.toggleExpanded();
                                      },
                                      icon: !categoryController.isExpanded.value
                                          ? const Icon(Icons.arrow_forward_ios)
                                          : const Icon(Icons.arrow_back_ios),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 30,
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Colors.orangeAccent
                                            .withOpacity(0.5),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Obx(
                                        () => Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8),
                                          child: Text(categoryController
                                              .getNameCategory.value),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Expanded(
                                child: ListView.builder(
                                  itemCount: 12,
                                  itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                                child: Text(
                                              'Item of category ${index + 1}',
                                              textAlign: TextAlign.center,
                                            )),
                                            const Icon(Icons.arrow_forward_ios),
                                          ],
                                        ),
                                        const Divider(),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
