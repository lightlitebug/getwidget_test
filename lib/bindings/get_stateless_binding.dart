import 'package:get/get.dart';
import '../controllers/cart_get_stateless_controller.dart';
import '../controllers/cart_get_stateless_item_controller.dart';

class GetStatelessBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CartGetStatelessController());
    Get.create(() => CartGetStatelessItemController());
  }
}
