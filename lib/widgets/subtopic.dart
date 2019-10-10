import 'package:devfest_slides/resources/styles.dart';
import 'package:flutter/material.dart';

class Subtopic extends StatelessWidget {
  final String text;
  final double startPadding;
  final Widget child;

  const Subtopic({this.text, this.startPadding = 40.0, this.child}) : assert(text != null || child != null);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: startPadding),
      child: text != null ? Text(text, style: Styles.textSubTopic) : child,
    );
  }
}
