import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helios_clone/screens/cart/cart_screen.dart';
import 'package:helios_clone/screens/home/widgets/CircleImageWithText.dart';
import 'package:helios_clone/screens/home/widgets/list_popular_products.dart';

import 'widgets/home_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
                            icon: const Icon(Icons.shopping_cart,),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: double.infinity,
                height: 175,
                child: Card(
                  elevation: 10,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: List.generate(
                          4,
                          (index) => CircleImageWithText(
                              assetImage: 'assets/images/ct1.png',
                              title: 'Item ${index + 1}'),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: List.generate(
                          4,
                          (index) => CircleImageWithText(
                              assetImage: 'assets/images/ct2.png',
                              title: 'Item ${index + 5}'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const HomeCarousel(),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Sản phẩm bán chạy',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 140,
                child: ListPopularProduct(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
