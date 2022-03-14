import 'package:get/get.dart';

class CategoryController extends GetxController {
  var isExpanded = false.obs;
  var indexOfCategory = 0.obs;
  var getNameCategory = 'Item 1'.obs;
  var exitApp = false.obs;

  void toggleExpanded() {
    isExpanded(!isExpanded.value);
  }

  void changeIndex(int val) {
    getNameCategory('Item ${val + 1}');
    indexOfCategory(val);
  }
}