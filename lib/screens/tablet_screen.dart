import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/view_controller.dart';
import '../utils/screen_types.dart';
import 'responsive/screen_builder.dart';

class TabletScreen extends StatelessWidget {
  TabletScreen({Key? key}) : super(key: key);
  final viewController = Get.find<ViewController>();

  @override
  Widget build(BuildContext context) {
    return ScreenBuilder(
      screenTypes: ScreenTypes.tablet,
      widget: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [],
      ),
    );
  }
}
