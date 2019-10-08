import 'package:devfest_slides/slider/slider_presenter.dart';
import 'package:flutter/material.dart';

abstract class SlideBase extends StatelessWidget {
  String slideTitle();
  Widget body(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return SliderPresenter(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  slideTitle(),
                  style: TextStyle(fontSize: 60),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: body(context),
            )
          ],
        ),
      ),
    );
  }
}
