import 'package:devfest_slides/resources/styles.dart';
import 'package:flutter/material.dart';

class ExpandedImage extends StatelessWidget {
  final EdgeInsets padding;
  final String imagePath;
  final double scale;
  final String caption;
  final int flex;
  final MainAxisAlignment alignment;

  const ExpandedImage({
    this.padding = const EdgeInsets.all(30.0),
    this.scale = 1,
    this.flex = 1,
    this.alignment = MainAxisAlignment.center,
    this.imagePath,
    this.caption,
  }) : assert(imagePath != null);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: padding,
        child: Column(
          mainAxisAlignment: alignment,
          children: [
            Image.asset(imagePath, scale: scale),
            if (caption != null) _Caption(caption),
          ],
        ),
      ),
    );
  }
}

class _Caption extends StatelessWidget {
  final String caption;

  const _Caption(this.caption);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Text(caption, style: Styles.textCaption),
      ],
    );
  }
}
