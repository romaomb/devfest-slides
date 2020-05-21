import 'package:devfest_slides/resources/images.dart';
import 'package:devfest_slides/resources/strings.dart';
import 'package:devfest_slides/widgets/expanded_image.dart';
import 'package:devfest_slides/widgets/triangle_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slides/flutter_slides.dart';

class BridgeSlide extends SlideBase {
  @override
  Widget background() => TriangleBackground();

  @override
  Widget title(BuildContext context) => Text(Strings.bridgeTitle);

  @override
  Widget body(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        TopicBox(
          topics: [
            Topic(
              'Isolamento',
              subtopics: [
                Subtopic(text: 'Sem engarrafamentos na ponte'),
                Subtopic(text: 'No wrappers'),
              ],
            ),
            TopicSpace(),
            Topic(
              'UI própria',
              subtopics: [
                Subtopic(text: 'Everything is a widget'),
                Subtopic(text: 'Liberdade de criação'),
                Subtopic(text: 'Animações a vontade'),
              ],
            ),
            TopicSpace(),
            Topic(
              'Hot Reload',
              subtopics: [
                Subtopic(text: 'Pintando uma tela'),
                Subtopic(text: 'Deprecated layout preview'),
              ],
            ),
            TopicSpace(),
            Topic('Use a plataforma como você quiser'),
          ],
        ),
        Column(
          children: <Widget>[
            ExpandedImage(
              flex: 1,
              padding: EdgeInsets.zero,
              imagePath: Images.bridge,
              scale: 2.0,
              alignment: MainAxisAlignment.end,
              caption: 'Javascript bridge',
            ),
            ExpandedImage(
              flex: 2,
              imagePath: Images.abstractFramework,
              caption: Strings.frameworkAbstractionCaption,
            ),
          ],
        )
      ],
    );
  }
}
