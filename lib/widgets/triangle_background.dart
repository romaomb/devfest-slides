import 'package:devfest_slides/resources/images.dart';
import 'package:flutter/material.dart';

class TriangleBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Image.asset(
        Images.backgroundTriangle,
        scale: 10.0,
      ),
    );
  }
}
