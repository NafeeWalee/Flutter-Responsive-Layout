import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/view_controller.dart';
import 'screens/desktop_Screen.dart';
import 'screens/mobile_screen.dart';
import 'screens/responsive/responsive_layout.dart';
import 'screens/tablet_screen.dart';
import 'screens/web_screen.dart';
import 'utils/container_clipper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final viewController = Get.find<ViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: ClipPath(
                clipper: ContainerClipper(),
                child: Container(
                  height: MediaQuery.sizeOf(context).height,
                  width: MediaQuery.sizeOf(context).width,
                  color: const Color(0xffFFB400),
                ),
              ),
            ),
            ResponsiveLayout(
              mobileScreen: MobileScreen(),
              tabletScreen: TabletScreen(),
              desktopScreen: DesktopScreen(),
              webScreen: WebScreen(),
            )
          ],
        ),
      ),
    );
  }
}
