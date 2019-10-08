import 'package:devfest_slides/slider/slider_presenter.dart';
import 'package:flutter/material.dart';

abstract class SlideBase extends StatelessWidget {
  Widget body(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return SliderPresenter(child: body(context));
  }
}
