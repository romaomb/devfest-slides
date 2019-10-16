import 'package:devfest_slides/resources/gifs.dart';
import 'package:devfest_slides/resources/strings.dart';
import 'package:devfest_slides/resources/styles.dart';
import 'package:devfest_slides/slider/slider_base.dart';
import 'package:devfest_slides/widgets/subtopic.dart';
import 'package:devfest_slides/widgets/topic.dart';
import 'package:devfest_slides/widgets/topic_box.dart';
import 'package:devfest_slides/widgets/topic_space.dart';
import 'package:devfest_slides/widgets/triangle_background.dart';
import 'package:flutter/material.dart';

class AsyncSlide extends SlideBase {
  @override
  Widget background() => TriangleBackground();

  @override
  String title() => Strings.asyncTitle;

  @override
  Widget body(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            TopicBox(
              flex: 3,
              padding: const EdgeInsets.only(top: 50.0),
              alignment: Alignment.topCenter,
              topics: [
                Topic(
                  'Dart introvertido',
                  subtopics: [
                    Subtopic(text: 'Isolates'),
                    Subtopic(text: 'Memória não compartilhada'),
                    Subtopic(text: 'Única thread com um loop de eventos'),
                  ],
                ),
                TopicSpace(),
                Topic(
                  '"Segundo plano"',
                  subtopics: [
                    Subtopic(text: 'Troca de mensages'),
                    Subtopic(text: 'Adeus locks'),
                    Subtopic(text: 'Garbage collector'),
                  ],
                ),
              ],
            ),
            TopicBox(
              flex: 2,
              padding: EdgeInsets.only(top: 50.0),
              topics: [
                Topic(
                  'Futures ~= Promises',
                  subtopics: [
                    Subtopic(text: 'then/catchError/whenComplete'),
                  ],
                ),
                TopicSpace(),
                Topic(
                  'Streams ~= Observables',
                  subtopics: [
                    Subtopic(text: 'listen: onData/onError/onDone'),
                    Subtopic(text: 'StreamController: stream & sink'),
                  ],
                ),
                TopicSpace(),
                Topic(
                  'Async/Await',
                ),
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
          child: Image.asset(
            Gifs.gift,
            scale: 1.5,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            'Event loop (giphy)',
            style: Styles.textCaption,
          ),
        )
      ],
    );
  }
}
