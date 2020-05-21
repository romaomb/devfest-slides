import 'package:devfest_slides/slider/slider_presenter.dart';
import 'package:flutter/material.dart';

abstract class SlideBase extends StatelessWidget {
  final int titleFlex;
  final int bodyFlex;
  final Alignment titleAlignment;

  SlideBase({this.titleFlex = 2, this.bodyFlex = 6, this.titleAlignment = Alignment.center});

  String title();
  Widget background();
  Widget body(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return SliderPresenter(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          fit: StackFit.expand,
          children: [
            background(),
            Column(
              children: [
                Expanded(
                  flex: titleFlex,
                  child: Align(
                    alignment: titleAlignment,
                    child: Text(
                      title(),
                      style: TextStyle(fontSize: 60),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Expanded(
                  flex: bodyFlex,
                  child: body(context),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
