import 'package:devfest_slides/resources/styles.dart';
import 'package:flutter/material.dart';

class ExpandedImage extends StatelessWidget {
  final EdgeInsets padding;
  final String imagePath;
  final double scale;
  final String caption;

  const ExpandedImage({
    this.padding,
    this.imagePath,
    this.scale = 1,
    this.caption,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: padding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath, scale: scale),
            SizedBox(height: 20),
            if (caption != null) Text(caption, style: Styles.textCaption),
          ],
        ),
      ),
    );
  }
}
