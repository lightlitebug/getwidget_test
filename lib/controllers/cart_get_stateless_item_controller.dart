import 'package:get/get.dart';

import 'cart_get_stateless_controller.dart';

class CartGetStatelessItemController extends GetxController {
  final quantity = 0.obs;

  static CartGetStatelessItemController get to => Get.find();

  void increment() {
    quantity.value++;
    CartGetStatelessController.to.totalNumberOfProducts.value++;
  }

  void decrement() {
    if (quantity.value > 0) {
      quantity.value--;
      CartGetStatelessController.to.totalNumberOfProducts.value--;
    }
  }
}
