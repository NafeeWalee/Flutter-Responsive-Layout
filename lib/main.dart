import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_strategy/url_strategy.dart';

import 'controller/view_controller.dart';
import 'home_page.dart';

void main() async {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    GetMaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      title: 'Responsive Layout',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      initialBinding: MyAppBinding(),
      home: const HomePage(),
    ),
  );
}

class MyAppBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ViewController>(() => ViewController());
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
