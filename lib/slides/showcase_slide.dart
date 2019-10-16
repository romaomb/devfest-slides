import 'package:dev_rpg/main.dart';
import 'package:devfest_slides/resources/strings.dart';
import 'package:devfest_slides/resources/styles.dart';
import 'package:devfest_slides/showcase/animation/home.dart';
import 'package:devfest_slides/slider/slider_base.dart';
import 'package:devfest_slides/widgets/triangle_background.dart';
import 'package:flutter/material.dart';

class ShowcaseSlide extends SlideBase {
  @override
  Widget background() => TriangleBackground();

  @override
  String title() => Strings.showcaseTitle;

  @override
  Widget body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: Row(
        children: [
          _buildDemoApp(app: AnimationDemoHome(), caption: 'Flutter Gallery'),
          _buildDemoApp(app: DeveloperQuest(), caption: 'Developer Quest'),
        ],
      ),
    );
  }

  Widget _buildDemoApp({Widget app, String caption}) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 350,
                child: app,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(caption, style: Styles.textCaption),
          ),
        ],
      ),
    );
  }
}
