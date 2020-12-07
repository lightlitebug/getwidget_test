import 'package:get/get.dart';

class CartGetStatelessController extends GetxController {
  final totalNumberOfProducts = 0.obs;
  final products = ['prod 1', 'prod 2', 'prod 3'].obs;

  static CartGetStatelessController get to => Get.find();

  void addProduct() => products.add('prod ${products.length + 1}');
}
