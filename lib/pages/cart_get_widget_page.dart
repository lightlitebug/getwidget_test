import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/cart_get_widget_controller.dart';
import '../controllers/cart_get_widget_item_controller.dart';

class CartGetViewPage extends GetView<CartGetWidgetController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CART'),
      ),
      body: Column(
        children: [
          SizedBox(height: 20.0),
          Obx(
            () => Text(
              'Total: ${controller.totalNumberOfProducts} items in cart',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Expanded(
            child: Obx(() {
              return ListView.separated(
                itemCount: controller.products.length,
                itemBuilder: (BuildContext context, int index) {
                  String product = controller.products[index];

                  return CartItem(product: product);
                },
                separatorBuilder: (context, index) => Divider(
                  color: Colors.grey,
                  height: 1,
                ),
              );
            }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          controller.addProduct();
        },
      ),
    );
  }
}

class CartItem extends GetWidget<CartGetWidgetItemController> {
  final String product;
  CartItem({this.product});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          product,
          style: TextStyle(fontSize: 18.0),
        ),
        Obx(
          () => Text(
            'Qty: ${controller.quantity.value}',
            style: TextStyle(fontSize: 18.0),
          ),
        ),
        Row(
          children: [
            IconButton(
              onPressed: () => controller.increment(),
              icon: Icon(Icons.add),
            ),
            IconButton(
              onPressed: () => controller.decrement(),
              icon: Icon(Icons.remove),
            ),
          ],
        ),
      ],
    );
  }
}
