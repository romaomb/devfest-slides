import 'package:devfest_slides/resources/strings.dart';
import 'package:devfest_slides/slider/slider_base.dart';
import 'package:devfest_slides/widgets/triangle_background.dart';
import 'package:flutter/material.dart';

class BinarySlide extends SlideBase {
  @override
  Widget background() => TriangleBackground();

  @override
  String title() => Strings.binaryTitle;

  @override
  Widget body(BuildContext context) {
    return Container();
  }
}
