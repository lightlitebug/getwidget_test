import 'package:get/get.dart';

import 'cart_get_widget_controller.dart';

class CartGetWidgetItemController extends GetxController {
  final quantity = 0.obs;

  static CartGetWidgetItemController get to => Get.find();

  void increment() {
    quantity.value++;
    CartGetWidgetController.to.totalNumberOfProducts.value++;
  }

  void decrement() {
    if (quantity.value > 0) {
      quantity.value--;
      CartGetWidgetController.to.totalNumberOfProducts.value--;
    }
  }
}
