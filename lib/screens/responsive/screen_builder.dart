import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/view_controller.dart';
import '../../utils/screen_types.dart';

class ScreenBuilder extends StatelessWidget {
  final Widget widget;
  final ScreenTypes screenTypes;

  final viewController = Get.find<ViewController>();

  ScreenBuilder({
    Key? key,
    required this.widget,
    required this.screenTypes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    alignment: Alignment.topCenter,
    child: ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: screenTypes.type.values.first,
        minWidth: screenTypes.type.values.last,
      ),
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          primary: false,
          child: widget,
        ),
      ),
    ),
  );
}
