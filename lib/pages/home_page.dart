import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text(
                'Go to GetWidget Cart',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () => Get.toNamed('/get-widget-cart'),
            ),
            ElevatedButton(
              child: Text(
                'Go to GetBuilder Cart',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () => Get.toNamed('/get-builder-cart'),
            ),
            ElevatedButton(
              child: Text(
                'Go to Stateless Cart',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () => Get.toNamed('/get-stateless-cart'),
            ),
          ],
        ),
      ),
    );
  }
}
