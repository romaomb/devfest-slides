import 'package:devfest_slides/resources/images.dart';
import 'package:devfest_slides/resources/strings.dart';
import 'package:devfest_slides/slider/slider_base.dart';
import 'package:flutter/material.dart';

class FrameworkSlide extends SlideBase {
  @override
  String title() => Strings.frameworkTitle;

  @override
  Widget body(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Image.asset(Images.framework),
      ],
    );
  }
}
