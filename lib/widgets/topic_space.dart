import 'package:flutter/material.dart';

class TopicSpace extends StatelessWidget {
  final double space;

  const TopicSpace({this.space = 40.0});

  @override
  Widget build(BuildContext context) => SizedBox(height: space);
}
