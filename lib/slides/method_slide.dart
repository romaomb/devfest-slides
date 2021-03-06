import 'package:devfest_slides/resources/code.dart';
import 'package:devfest_slides/resources/strings.dart';
import 'package:devfest_slides/source/source_code_view.dart';
import 'package:devfest_slides/widgets/triangle_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slides/flutter_slides.dart';

class MethodSlide extends SlideBase {
  @override
  Widget background() => TriangleBackground();

  Widget title(BuildContext context) => Text(Strings.methodTitle);

  @override
  Widget body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60.0, right: 60.0, bottom: 40.0),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 60.0),
              child: SourceCodeView(
                filePath: Code.method,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 60.0),
              child: SourceCodeView(
                filePath: Code.event,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
