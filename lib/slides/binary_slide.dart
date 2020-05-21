import 'package:devfest_slides/resources/gifs.dart';
import 'package:devfest_slides/resources/images.dart';
import 'package:devfest_slides/resources/strings.dart';
import 'package:devfest_slides/resources/styles.dart';
import 'package:devfest_slides/widgets/triangle_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slides/flutter_slides.dart';

class BinarySlide extends SlideBase {
  @override
  Widget background() => TriangleBackground();

  @override
  Widget title(BuildContext context) => Text(Strings.binaryTitle);

  @override
  Widget body(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopicBox(
                topics: [
                  Topic(
                    'Mensagens codificadas em Byte Buffer',
                    subtopics: [
                      Subtopic(text: 'Confusão? Channels para diferenciar'),
                      Subtopic(text: 'BinaryMessenger API'),
                      Subtopic(text: 'Não esquece de responder, viu?'),
                      Subtopic(text: 'Cada um com os seus problemas')
                    ],
                  ),
                  TopicSpace(),
                  Topic(
                    'BasicMessageChannel to the rescue!',
                    subtopics: [
                      Subtopic(text: 'BinaryMessenger + Codec (não é o k-lite)'),
                      Subtopic(text: 'StringCodec, JSONMessageCodec, StandardMessageCodec...'),
                      Subtopic(text: 'Crie o seu Codec')
                    ],
                  ),
                  TopicSpace(),
                  Topic(
                    'MethodChannel?',
                    subtopics: [
                      Subtopic(text: 'BasicMessageChannel + StandardMessageCodec + tooling'),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 80.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                children: <Widget>[
                  Image.asset(Images.carrey, scale: 1.5),
                  SizedBox(height: 20),
                  Text('Mensagens podem ser tipo também...', style: Styles.textCaption)
                ],
              ),
              SizedBox(height: 40),
              Column(
                children: <Widget>[
                  Image.asset(Gifs.isolate),
                  SizedBox(height: 20),
                  Text('Dart isolates usam BinaryMessengers', style: Styles.textCaption)
                ],
              ),
            ],
          )
        )
      ],
    );
  }
}
