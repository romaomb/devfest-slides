import 'package:devfest_slides/scenes/about/about_route.dart';
import 'package:devfest_slides/scenes/welcome/welcome_route.dart';
import 'package:devfest_slides/slider/slider_components.dart';
import 'package:devfest_slides/slider/slider_listener.dart';
import 'package:devfest_slides/slider/slider_provider.dart';
import 'package:flutter/material.dart';

class SliderPresenter extends StatelessWidget {
  final Widget child;

  SliderPresenter({@required this.child}) : assert(child != null);

  @override
  Widget build(BuildContext context) {
    return SliderListener(
      child: child,
      onKeyPressed: (SliderAction action) => _onKeyPressed(context, action),
    );
  }

  void _onKeyPressed(BuildContext context, SliderAction action) {
    final manager = SliderProvider.of(context).manager;
    final nextSlide = manager.handlerSliderAction(action);
    if (nextSlide != null) Navigator.push(context, _mapSlideToRoute(nextSlide));
  }

  Route _mapSlideToRoute(Slide slide) {
    return MaterialPageRoute(
      builder: (context) {
        if (slide == Slide.welcome) {
          return WelcomeRoute();
        } else {
          return AboutRoute();
        }
      },
    );
  }
}
