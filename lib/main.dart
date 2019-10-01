import 'dart:io';

import 'package:devfest_slides/resources/routes.dart';
import 'package:devfest_slides/scenes/about/about_route.dart';
import 'package:devfest_slides/scenes/welcome/welcome_route.dart';
import 'package:devfest_slides/util/slider_presenter/slider_action.dart';
import 'package:devfest_slides/util/slider_presenter/slider_manager.dart';
import 'package:devfest_slides/util/slider_presenter/slider_presenter.dart';
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
  final slideManager = SliderManager();

  @override
  Widget build(BuildContext context) {
    return SliderPresenter(
      onKeyPressed: (SliderAction action) {
        print('Action pressed ${action.toString()}');
      },
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.orange),
        initialRoute: Routes.welcome.toString(),
        routes: {
          Routes.welcome.toString(): (context) => WelcomeRoute(),
          Routes.about.toString(): (context) => AboutRoute(),
        },
      ),
    );
  }
}
