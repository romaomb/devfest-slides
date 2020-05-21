import 'dart:io';

import 'package:devfest_slides/slides/slides.dart';
import 'package:flare_flutter/flare_cache.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slides/flutter_slides.dart';

void main() {
  _enablePlatformOverrideForDesktop();
  FlareCache.doesPrune = false;

  final slides = _getSlides();
  final sliderManager = SlideManager(slides);

  runApp(MyApp(slides, sliderManager));
}

void _enablePlatformOverrideForDesktop() {
  if (!kIsWeb && (Platform.isMacOS || Platform.isWindows || Platform.isLinux)) {
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  }
}

List<Slide> _getSlides() {
  return [
    Slide(route: WelcomeSlide()),
    Slide(route: AboutSlide()),
    Slide(route: FrameworkSlide()),
    Slide(route: BridgeSlide()),
    Slide(route: ShowcaseSlide()),
    Slide(route: AsyncSlide()),
    Slide(route: ChannelSlide()),
    Slide(route: BinarySlide()),
    Slide(route: TypesSlide()),
    Slide(route: MethodSlide()),
    Slide(route: ProtobufSlide()),
    Slide(route: DemoSlide()),
    Slide(route: ThanksSlide()),
  ];
}

class MyApp extends StatelessWidget {
  final List<Slide> slides;
  final SlideManager sliderManager;

  const MyApp(this.slides, this.sliderManager);

  @override
  Widget build(BuildContext context) {
    return SlideProvider(
      manager: sliderManager,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.orange),
        home: slides[0].route,
      ),
    );
  }
}
