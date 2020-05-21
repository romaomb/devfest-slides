import 'package:devfest_slides/slider/slider_manager.dart';
import 'package:flutter/material.dart';

class SliderProvider extends InheritedWidget {
  final SliderManager manager;

  const SliderProvider({this.manager, Widget child}) : super(child: child);

  static SliderProvider of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(SliderProvider) as SliderProvider;
  }

  @override
  bool updateShouldNotify(SliderProvider old) => false;
}
