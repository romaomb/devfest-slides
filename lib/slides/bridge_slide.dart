import 'package:devfest_slides/resources/images.dart';
import 'package:devfest_slides/resources/strings.dart';
import 'package:devfest_slides/slider/slider_base.dart';
import 'package:devfest_slides/widgets/expanded_image.dart';
import 'package:flutter/material.dart';

class BridgeSlide extends SlideBase {
  @override
  String title() => Strings.bridgeTitle;

  @override
  Widget body(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Text('Test'),
        ),
        ExpandedImage(
          padding: const EdgeInsets.all(30.0),
          imagePath: Images.abstractFramework,
          caption: Strings.frameworkAbstractionCaption,
        )
      ],
    );
  }
}
