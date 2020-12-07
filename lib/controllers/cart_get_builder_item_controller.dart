import 'package:get/get.dart';

import 'cart_get_builder_controller.dart';

class CartGetBuilderItemController extends GetxController {
  int quantity = 0;

  static CartGetBuilderItemController get to => Get.find();

  void increment() {
    quantity++;
    CartGetBuilderController.to.totalNumberOfProducts.value++;
    update();
  }

  void decrement() {
    if (quantity > 0) {
      quantity--;
      CartGetBuilderController.to.totalNumberOfProducts.value--;
      update();
    }
  }
}
