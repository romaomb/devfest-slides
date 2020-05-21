import 'package:devfest_slides/resources/gifs.dart';
import 'package:devfest_slides/resources/images.dart';
import 'package:devfest_slides/resources/strings.dart';
import 'package:devfest_slides/widgets/expanded_image.dart';
import 'package:devfest_slides/widgets/triangle_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slides/flutter_slides.dart';

class FrameworkSlide extends SlideBase {
  @override
  Widget background() => TriangleBackground();

  Widget title(BuildContext context) => Text(Strings.frameworkTitle);

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
                imagePath: Images.framework,
                scale: 2.0,
                caption: Strings.frameworkCaption,
              ),
              ExpandedImage(
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
