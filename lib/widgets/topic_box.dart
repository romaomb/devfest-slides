import 'package:flutter/material.dart';

class TopicBox extends StatelessWidget {
  final int flex;
  final EdgeInsets padding;
  final Alignment alignment;
  final List<Widget> topics;

  const TopicBox({
    this.topics,
    this.alignment = Alignment.topLeft,
    this.flex = 1,
    this.padding = const EdgeInsets.only(left: 120.0, top: 50.0),
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        alignment: alignment,
        padding: padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: topics,
        ),
      ),
    );
  }
}
