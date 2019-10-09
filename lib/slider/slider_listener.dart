import 'package:devfest_slides/slider/slider_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const leftKeyCode = 123;
const rightKeyCode = 124;

class SliderListener extends StatefulWidget {
  final Widget child;
  final Function onKeyPressed;

  const SliderListener({this.child, this.onKeyPressed});

  @override
  _SliderListenerState createState() => _SliderListenerState();
}

class _SliderListenerState extends State<SliderListener> {
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    FocusScope.of(context).requestFocus(_focusNode);
  }

  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      focusNode: _focusNode,
      onKey: onKeyEvent,
      child: widget.child,
    );
  }

  void onKeyEvent(RawKeyEvent event) {
    if (event.runtimeType == RawKeyUpEvent && event.data.runtimeType == RawKeyEventDataMacOs) {
      final RawKeyEventDataMacOs data = event.data;
      if (data.keyCode == leftKeyCode) {
        widget.onKeyPressed(SliderAction.previous);
      } else if (data.keyCode == rightKeyCode) {
        widget.onKeyPressed(SliderAction.next);
      }
    }
  }
}
