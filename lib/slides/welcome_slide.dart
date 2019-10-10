import 'package:devfest_slides/resources/images.dart';
import 'package:devfest_slides/resources/strings.dart';
import 'package:devfest_slides/slider/slider_base.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WelcomeSlide extends SlideBase {
  @override
  String title() => Strings.welcomeTitle;

  @override
  Widget body(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        FittedBox(
          child: Icon(
            FontAwesomeIcons.heart,
            color: Colors.red.shade400,
          ),
        ),
        Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(top: 130.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.white,
                padding: const EdgeInsets.only(
                  top: 57.0,
                  right: 20.0,
                  bottom: 40.0,
                ),
                child: Image.asset(
                  Images.android,
                  scale: 5,
                ),
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.only(
                  top: 20.0,
                  left: 20.0,
                  bottom: 20.0,
                ),
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
            padding: const EdgeInsets.symmetric(
              horizontal: 5.0,
              vertical: 20.0,
            ),
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
