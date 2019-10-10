import 'package:devfest_slides/resources/images.dart';
import 'package:devfest_slides/resources/strings.dart';
import 'package:devfest_slides/slider/slider_base.dart';
import 'package:devfest_slides/widgets/expanded_image.dart';
import 'package:flutter/material.dart';

class ChannelSlide extends SlideBase {
  @override
  String title() => Strings.channelTitle;

  @override
  Widget body(BuildContext context) {
    return Column(
      children: <Widget>[
        ExpandedImage(
          padding: const EdgeInsets.all(30.0),
          scale: 1.1,
          imagePath: Images.channels,
        ),
      ],
    );
  }
}
