import 'package:devfest_slides/resources/images.dart';
import 'package:devfest_slides/resources/strings.dart';
import 'package:devfest_slides/widgets/expanded_image.dart';
import 'package:devfest_slides/widgets/triangle_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slides/flutter_slides.dart';

class ChannelSlide extends SlideBase {
  @override
  Widget background() => TriangleBackground();

  @override
  Widget title(BuildContext context) => Text(Strings.channelTitle);

  @override
  Widget body(BuildContext context) {
    return Row(
      children: <Widget>[
        ExpandedImage(
          alignment: MainAxisAlignment.start,
          padding: EdgeInsets.zero,
          imagePath: Images.channels,
        ),
        ExpandedImage(
          alignment: MainAxisAlignment.start,
          padding: EdgeInsets.only(top: 40.0),
          imagePath: Images.platform,
        ),
      ],
    );
  }
}
