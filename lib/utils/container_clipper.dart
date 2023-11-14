import 'package:flutter/material.dart';

class ContainerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.moveTo(0.0, 0.0);
    path.lineTo(size.width,0.0);
    path.lineTo(size.width, size.height/8);
    path.lineTo(0.0, size.height/2.6);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(ContainerClipper oldClipper) => false;
}