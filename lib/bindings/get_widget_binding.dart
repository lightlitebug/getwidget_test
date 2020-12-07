import 'package:get/get.dart';

import '../controllers/cart_get_widget_controller.dart';
import '../controllers/cart_get_widget_item_controller.dart';

class GetWidgetBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CartGetWidgetController());
    Get.create(() => CartGetWidgetItemController());
  }
}
