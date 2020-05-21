import 'package:devfest_slides/resources/gifs.dart';
import 'package:devfest_slides/resources/strings.dart';
import 'package:devfest_slides/resources/styles.dart';
import 'package:devfest_slides/widgets/triangle_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slides/flutter_slides.dart';

class DemoSlide extends SlideBase {
  @override
  Widget background() => TriangleBackground();

  @override
  Widget title(BuildContext context) => Text(Strings.demoTitle);

  @override
  Widget body(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30.0),
        Image.asset(
          Gifs.massa,
          scale: 0.4,
        ),
        SizedBox(height: 20.0),
        Text(
          'Flutter enviando mensagens para as plataforma nativas...',
          style: Styles.textCaption,
        )
      ],
    );
  }
}
