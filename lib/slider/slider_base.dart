import 'package:devfest_slides/slider/slider_presenter.dart';
import 'package:flutter/material.dart';

abstract class SlideBase extends StatelessWidget {
  final int titleFlex;
  final int bodyFlex;

  SlideBase({this.titleFlex = 2, this.bodyFlex = 6});

  String title();

  Widget body(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return SliderPresenter(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              flex: titleFlex,
              child: Align(
                alignment: Alignment.center,
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
      ),
    );
  }
}
