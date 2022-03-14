import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helios_clone/screens/product/product_detail_screen.dart';

class ListPopularProduct extends StatelessWidget {
  const ListPopularProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      cacheExtent: 10,
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          Get.to(
            () => const ProductDetailScreen(),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 500),
          );
        },
        child: Card(
          elevation: 3,
          margin: const EdgeInsets.all(5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/ct1.png',
                width: 120,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '3.9',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Product Name',
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '2,200,000 vnd',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Brand Name',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
