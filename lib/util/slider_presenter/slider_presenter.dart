import 'package:devfest_slides/util/slider_presenter/slider_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SliderPresenter extends StatelessWidget {
  final Widget child;
  final Function onKeyPressed;
  final FocusNode _focusNode = FocusNode();

  SliderPresenter({@required this.child, @required this.onKeyPressed})
      : assert(child != null),
        assert(onKeyPressed != null);

  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      focusNode: _focusNode,
      onKey: onKeyEvent,
      child: child,
    );
  }

  void onKeyEvent(RawKeyEvent event) {
    if (event.runtimeType == RawKeyDownEvent && event.data.runtimeType == RawKeyEventDataMacOs) {
      final RawKeyEventDataMacOs data = event.data;
      if (data.keyCode == 123) {
        onKeyPressed(SliderAction.previous);
      } else if (data.keyCode == 124) {
        onKeyPressed(SliderAction.next);
      }
    }
  }
}
