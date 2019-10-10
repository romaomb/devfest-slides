import 'package:devfest_slides/resources/gifs.dart';
import 'package:devfest_slides/resources/images.dart';
import 'package:devfest_slides/resources/strings.dart';
import 'package:devfest_slides/slider/slider_base.dart';
import 'package:devfest_slides/widgets/expanded_image.dart';
import 'package:flutter/material.dart';

class FrameworkSlide extends SlideBase {
  @override
  String title() => Strings.frameworkTitle;

  @override
  Widget body(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(flex: 4, child: Image.asset(Gifs.shrek)),
        Expanded(
          flex: 9,
          child: Row(
            children: <Widget>[
              ExpandedImage(
                padding: const EdgeInsets.all(30.0),
                imagePath: Images.framework,
                scale: 2.0,
                caption: Strings.frameworkCaption,
              ),
              ExpandedImage(
                padding: const EdgeInsets.all(30.0),
                imagePath: Images.dart,
                scale: 2.0,
                caption: Strings.dartCompilerCaption,
              )
            ],
          ),
        ),
      ],
    );
  }
}
