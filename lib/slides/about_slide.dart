import 'package:devfest_slides/resources/images.dart';
import 'package:devfest_slides/resources/strings.dart';
import 'package:devfest_slides/resources/styles.dart';
import 'package:devfest_slides/slider/slider_base.dart';
import 'package:devfest_slides/widgets/subtopic.dart';
import 'package:devfest_slides/widgets/topic.dart';
import 'package:devfest_slides/widgets/topic_space.dart';
import 'package:flutter/material.dart';

class AboutSlide extends SlideBase {
  @override
  String title() => Strings.aboutTitle;

  @override
  Widget body(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 60.0, right: 60, bottom: 120),
              child: Image.asset(
                Images.romao,
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.only(bottom: 85),
              child: Text(
                'Why so serious?',
                style: Styles.textCaption,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Topic(
                '2008: Comecei minha jornada na tecnologia',
                subtopics: [
                  Subtopic('Manutenção de computadores, notebook e impressoras'),
                  Subtopic('IFBA - Técnico em Informática'),
                ],
              ),
              TopicSpace(space: 40.0),
              Topic(
                '2012: Foco na Infra',
                subtopics: [
                  Subtopic('Especialista em Segurança de Endpoints e Acesso a Rede'),
                  Subtopic('Gerente de T.I'),
                ],
              ),
              TopicSpace(space: 40.0),
              Topic(
                '2014: USA, USA, USA',
                subtopics: [
                  Subtopic('Ciências sem Fronteiras (CAPES)'),
                  Subtopic('Ciências da Computação - Neurociência'),
                ],
              ),
              TopicSpace(space: 40.0),
              Topic(
                '2018: Engenheiro da Computação (UNIFACS)',
                subtopics: [
                  Subtopic('Desenvolvedor Android - Kotlin <3'),
                  Subtopic('Engenheiro de Software na ArcTouch - Flutter <3'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
