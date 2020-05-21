import 'package:devfest_slides/resources/gifs.dart';
import 'package:devfest_slides/resources/images.dart';
import 'package:devfest_slides/resources/strings.dart';
import 'package:devfest_slides/resources/styles.dart';
import 'package:devfest_slides/slider/slider_base.dart';
import 'package:devfest_slides/widgets/square_background.dart';
import 'package:devfest_slides/widgets/topic.dart';
import 'package:devfest_slides/widgets/triangle_background.dart';
import 'package:flutter/material.dart';

class ThanksSlide extends SlideBase {
  @override
  Widget background() {
    return Stack(
      fit: StackFit.expand,
      children: [
        TriangleBackground(),
        SquareBackground(),
      ],
    );
  }

  @override
  String title() => Strings.thanksTitle;

  @override
  Widget body(BuildContext context) {
    final topPadding = const EdgeInsets.only(top: 50.0);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: topPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Contatos:', style: Styles.textTopic),
                  SizedBox(height: 40.0),
                  Topic('LinkedIn: @romaomb'),
                  SizedBox(height: 5.0),
                  Topic('Github: @romaomb'),
                  SizedBox(height: 5.0),
                  Topic('Facebook: @romaomb'),
                  SizedBox(height: 5.0),
                  Topic('Instagram: @romaomb'),
                  SizedBox(height: 5.0),
                  Topic('Twitter: @romaomb'),
                ],
              ),
            ),
            SizedBox(
              width: 200.0,
            ),
            Container(
              padding: topPadding,
              alignment: Alignment.topCenter,
              child: Image.asset(
                Gifs.thanks,
                scale: 0.7,
              ),
            ),
          ],
        ),
        SizedBox(height: 60.0),
        Text(
          'Link para a palestra: https://github.com/romaomb/devfest-slides',
          style: Styles.textTopic,
        ),
        SizedBox(height: 20.0),
        Image.asset(
          Images.challenge,
          scale: 2.0,
        )
      ],
    );
  }
}
