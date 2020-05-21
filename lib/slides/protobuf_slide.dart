import 'package:devfest_slides/resources/images.dart';
import 'package:devfest_slides/resources/strings.dart';
import 'package:devfest_slides/slider/slider_base.dart';
import 'package:devfest_slides/widgets/subtopic.dart';
import 'package:devfest_slides/widgets/topic.dart';
import 'package:devfest_slides/widgets/topic_box.dart';
import 'package:devfest_slides/widgets/topic_space.dart';
import 'package:devfest_slides/widgets/triangle_background.dart';
import 'package:flutter/material.dart';

class ProtobufSlide extends SlideBase {
  @override
  Widget background() => TriangleBackground();

  @override
  String title() => Strings.protobufTitle;

  @override
  Widget body(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            TopicBox(
              topics: [
                Topic(
                  'Mecanismo de serialização: "think XML, but smaller, faster, and simpler"',
                  subtopics: [Subtopic(text: 'Modelelagem de classes'), Subtopic(text: 'Geração de código')],
                ),
                TopicSpace(),
                Topic(
                  'Linguagem neutro',
                  subtopics: [
                    Subtopic(text: 'PHP, C++, C#, Obj-C, Dart, Go, Java, JavaScript, Ruby, Python'),
                  ],
                ),
                TopicSpace(),
                Topic(
                  'Plataforma neutro',
                  subtopics: [
                    Subtopic(text: 'Desktop, celular, servidor...'),
                  ],
                ),
                TopicSpace(),
                Topic(
                  'Benchmarking: Person class',
                  subtopics: [
                    Subtopic(text: 'XML: at least 69 bytes => around 5,000-10,000 nanoseconds to parse.'),
                    Subtopic(text: 'protobuf: 28 bytes => around 100-200 nanoseconds to parse '),
                  ],
                )
              ],
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 80.0, bottom: 100.0),
            child: Image.asset(Images.protobuf, scale: 1.5),
          ),
        )
      ],
    );
  }
}
