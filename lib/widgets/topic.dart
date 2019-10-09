import 'package:devfest_slides/resources/styles.dart';
import 'package:devfest_slides/widgets/subtopic.dart';
import 'package:devfest_slides/widgets/topic_space.dart';
import 'package:flutter/material.dart';

class Topic extends StatelessWidget {
  final String text;
  final List<Subtopic> subtopics;

  const Topic(this.text, {this.subtopics});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _buildChildren(),
    );
  }

  List<Widget> _buildChildren() {
    List<Widget> children = [Text(text, style: Styles.textTopic)];
    for (var subtopic in subtopics) {
      children.add(TopicSpace(space: 8.0));
      children.add(subtopic);
    }
    return children;
  }
}
