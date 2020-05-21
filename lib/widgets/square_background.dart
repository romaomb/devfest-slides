import 'package:devfest_slides/resources/images.dart';
import 'package:flutter/material.dart';

class SquareBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.bottomRight,
      child: Image.asset(
        Images.backgroundSquare,
        scale: 8.0,
      ),
    );
  }
}
