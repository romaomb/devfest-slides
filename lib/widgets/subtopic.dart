import 'package:devfest_slides/resources/styles.dart';
import 'package:flutter/material.dart';

class Subtopic extends StatelessWidget {
  final double startPadding;
  final String text;

  const Subtopic(this.text, {this.startPadding = 40.0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: startPadding),
      child: Text(
        text,
        style: Styles.textSubTopic,
      ),
    );
  }
}
