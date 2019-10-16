import 'package:devfest_slides/resources/images.dart';
import 'package:devfest_slides/resources/strings.dart';
import 'package:devfest_slides/slider/slider_base.dart';
import 'package:devfest_slides/widgets/expanded_image.dart';
import 'package:devfest_slides/widgets/triangle_background.dart';
import 'package:flutter/material.dart';

class ChannelSlide extends SlideBase {
  @override
  Widget background() => TriangleBackground();

  @override
  String title() => Strings.channelTitle;

  @override
  Widget body(BuildContext context) {
    return Row(
      children: <Widget>[
        ExpandedImage(
          padding: EdgeInsets.zero,
          imagePath: Images.channels,
        ),
        ExpandedImage(
          padding: EdgeInsets.zero,
          imagePath: Images.platform,
        ),
      ],
    );
  }
}
