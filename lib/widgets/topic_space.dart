import 'package:flutter/material.dart';

class TopicSpace extends StatelessWidget {
  final double space;

  const TopicSpace({this.space});

  @override
  Widget build(BuildContext context) => SizedBox(height: space);
}
