import 'package:get/get.dart';

class CartGetBuilderController extends GetxController {
  final totalNumberOfProducts = 0.obs;
  final products = ['prod 1', 'prod 2', 'prod 3'].obs;

  static CartGetBuilderController get to => Get.find();

  void addProduct() => products.add('prod ${products.length + 1}');
}
