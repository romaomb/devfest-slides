import 'dart:io';

import 'package:devfest_slides/slider/slider_manager.dart';
import 'package:devfest_slides/slider/slider_provider.dart';
import 'package:devfest_slides/slides/welcome_route.dart';
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
    return SliderProvider(
      manager: SliderManager(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.orange),
        home: WelcomeRoute(),
      ),
    );
  }
}
