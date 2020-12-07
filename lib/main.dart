import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bindings/get_widget_binding.dart';
import 'bindings/get_builder_binding.dart';
import 'bindings/get_stateless_binding.dart';

import 'pages/home_page.dart';
import 'pages/cart_get_builder_page.dart';
import 'pages/cart_get_widget_page.dart';
import 'pages/cart_stateless_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetWidget Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      defaultTransition: Transition.fade,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      getPages: [
        GetPage(
          name: '/home',
          page: () => HomePage(),
        ),
        GetPage(
          name: '/get-widget-cart',
          page: () => CartGetViewPage(),
          binding: GetWidgetBinding(),
        ),
        GetPage(
          name: '/get-builder-cart',
          page: () => CartGetBuilderPage(),
          binding: GetBuilderBinding(),
        ),
        GetPage(
          name: '/get-stateless-cart',
          page: () => CartStatelessPage(),
          binding: GetStatelessBinding(),
        ),
      ],
    );
  }
}
