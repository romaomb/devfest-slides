import 'package:devfest_slides/resources/images.dart';
import 'package:devfest_slides/resources/strings.dart';
import 'package:devfest_slides/slider/slider_base.dart';
import 'package:devfest_slides/widgets/triangle_background.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class WelcomeSlide extends SlideBase {
  WelcomeSlide()
      : super(
          titleFlex: 1,
          bodyFlex: 6,
          titleAlignment: Alignment.bottomCenter,
        );

  @override
  Widget background() {
    return Stack(
      fit: StackFit.expand,
      children: [
        TriangleBackground(),
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            Images.backgroundSquare,
            scale: 8.0,
          ),
        ),
      ],
    );
  }

  @override
  String title() => Strings.welcomeTitle;

  @override
  Widget body(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        FittedBox(
          child: Icon(
            LineIcons.heart_o,
            color: Colors.red.shade900.withOpacity(0.8),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 180.0),
          alignment: Alignment.topCenter,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.white,
                padding: const EdgeInsets.only(left: 5.0, top: 57.0, right: 30.0, bottom: 40.0),
                child: Image.asset(
                  Images.android,
                  scale: 5,
                ),
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.only(top: 20.0, right: 20.0, bottom: 20.0),
                child: Image.asset(
                  Images.apple,
                  scale: 8,
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0, bottom: 75.0),
            child: Image.asset(
              Images.flutter,
              scale: 6.0,
            ),
          ),
        )
      ],
    );
  }
}
