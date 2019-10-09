import 'dart:io';

import 'package:devfest_slides/slider/slider_components.dart';
import 'package:devfest_slides/slider/slider_manager.dart';
import 'package:devfest_slides/slider/slider_provider.dart';
import 'package:devfest_slides/slides.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void _enablePlatformOverrideForDesktop() {
  if (!kIsWeb && (Platform.isMacOS || Platform.isWindows || Platform.isLinux)) {
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  }
}

void main() {
  _enablePlatformOverrideForDesktop();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final slides = _getSlides();
    return SliderProvider(
      manager: SliderManager(slides: slides),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.orange),
        home: slides[0].route,
      ),
    );
  }

  List<Slide> _getSlides() {
    return [
      Slide(route: WelcomeSlide()),
      Slide(route: AboutSlide()),
      Slide(route: FrameworkSlide()),
      Slide(route: BridgeSlide()),
      Slide(route: AsyncSlide()),
      Slide(route: ChannelSlide()),
      Slide(route: TypesSlide()),
      Slide(route: BinarySlide()),
      Slide(route: MethodSlide()),
      Slide(route: EventSlide()),
      Slide(route: ProtobufSlide()),
      Slide(route: DemoSlide()),
      Slide(route: ThanksSlide()),
    ];
  }
}
