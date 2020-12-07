import 'package:get/get.dart';
import '../controllers/cart_get_builder_item_controller.dart';
import '../controllers/cart_get_builder_controller.dart';

class GetBuilderBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CartGetBuilderController());
    Get.create(() => CartGetBuilderItemController());
  }
}
