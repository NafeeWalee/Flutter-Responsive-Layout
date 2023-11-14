import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/view_controller.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreen;
  final Widget tabletScreen;
  final Widget desktopScreen;
  final Widget webScreen;

  final viewController = Get.find<ViewController>();

  ResponsiveLayout({
    super.key,
    required this.mobileScreen,
    required this.tabletScreen,
    required this.desktopScreen,
    required this.webScreen,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= viewController.mobileWidth) {
          return mobileScreen;
        } else if (constraints.maxWidth <= viewController.tabletWidth) {
          return tabletScreen;
        } else if (constraints.maxWidth <= viewController.desktopWidth) {
          return desktopScreen;
        } else {
          return webScreen;
        }
      },
    );
  }
}
