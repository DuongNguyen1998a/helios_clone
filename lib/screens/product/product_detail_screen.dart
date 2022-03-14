import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helios_clone/screens/payment/payment_screen.dart';
import 'package:helios_clone/utils/functions/utils_function.dart';

import '../cart/cart_screen.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey.withOpacity(0.9),
        ),
        backgroundColor: Colors.white,
        title: const Text(
          'Vật liệu chống thấm Revinex Flex ES NEOTEX',
          maxLines: 2,
          style: TextStyle(
            color: Colors.orange,
            fontSize: 12,
            fontWeight: FontWeight.normal,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(
                () => const CartScreen(),
                transition: Transition.rightToLeft,
                duration: const Duration(milliseconds: 500),
              );
            },
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black87,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      height: 200,
                      color: Colors.orange,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 18,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            '1 đánh giá',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Text('Vật liệu chống thấm Revinex Flex ES NEOTEX'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      child: Wrap(
                        children: [
                          Text(
                            'Hãng sản xuất: ',
                            style: TextStyle(
                              color: Colors.grey.withOpacity(0.9),
                              fontSize: 12,
                            ),
                          ),
                          const Text(
                            'Cadivi',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Wrap(
                            children: [
                              Text(
                                '1,784,000 vnđ',
                                style: TextStyle(
                                    color: Colors.grey.withOpacity(0.9),
                                    decoration: TextDecoration.lineThrough),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                '5% OFF',
                                style: TextStyle(
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 28,
                                width: 28,
                                margin: const EdgeInsets.only(right: 8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.blue.withOpacity(0.4),
                                    border: Border.all(
                                        color: Colors.blue, width: 1.0)),
                                child: IconButton(
                                  padding: EdgeInsets.zero,
                                  onPressed: () {},
                                  icon: const Icon(Icons.remove),
                                ),
                              ),
                              SizedBox(
                                width: 50,
                                height: 28,
                                child: TextFormField(
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                  initialValue: '1',
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.zero,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      gapPadding: 0,
                                      borderSide: const BorderSide(
                                          color: Colors.blue, width: 1.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      gapPadding: 0,
                                      borderSide: const BorderSide(
                                          color: Colors.blue, width: 1.0),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 28,
                                width: 28,
                                alignment: Alignment.center,
                                padding: EdgeInsets.zero,
                                margin: const EdgeInsets.only(left: 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.blue.withOpacity(0.4),
                                  border: Border.all(
                                      color: Colors.blue, width: 1.0),
                                ),
                                child: IconButton(
                                  padding: EdgeInsets.zero,
                                  onPressed: () {},
                                  icon: const Icon(Icons.add),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('1,694,000 vnđ'),
                          Column(
                            children: [
                              Text(
                                'Đơn vị: Thùng',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey.withOpacity(0.9),
                                ),
                              ),
                              Text(
                                '(Số lượng tối thiểu: 1)',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey.withOpacity(0.9),
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Vận chuyển & dịch vụ'),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.add_location_alt,
                                color: Colors.orange,
                                size: 30,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                        'Kiểm tra vùng hoạt động & dịch vụ'),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      'Nhập PinCode để nhận chi tiết',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Icon(
                                Icons.check,
                                color: Colors.orange,
                                size: 30,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        UtilsFunction.showToast('Đã thêm vào giỏ hàng');
                      },
                      icon: const Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.orange,
                      ),
                      label: const Text(
                        'THÊM VÀO GIỎ',
                        style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(
                          () => const PaymentScreen(),
                          transition: Transition.rightToLeft,
                          duration: const Duration(milliseconds: 500),
                        );
                      },
                      child: const Text(
                        'MUA NGAY',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
