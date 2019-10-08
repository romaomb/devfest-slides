import 'package:devfest_slides/resources/strings.dart';
import 'package:devfest_slides/slider/slider_base.dart';
import 'package:flutter/material.dart';

class AboutRoute extends SlideBase {
  @override
  String slideTitle() => Strings.aboutTitle;

  @override
  Widget body(BuildContext context) {
    return Column(
      children: [Text('Engenheiro da computação'), Text('Engenheiro de software na Arctouch')],
    );
  }
}
