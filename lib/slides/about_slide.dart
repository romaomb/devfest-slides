import 'package:devfest_slides/resources/images.dart';
import 'package:devfest_slides/resources/strings.dart';
import 'package:devfest_slides/resources/styles.dart';
import 'package:devfest_slides/widgets/triangle_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slides/flutter_slides.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutSlide extends SlideBase {
  @override
  Widget background() => TriangleBackground();

  @override
  Widget title(BuildContext context) => Text(Strings.aboutTitle);

  @override
  Widget body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
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
                  Strings.romaoCaption,
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
                    Subtopic(text: 'Manutenção de computadores, notebook e impressoras'),
                    Subtopic(text: 'IFBA - Técnico em Informática'),
                  ],
                ),
                TopicSpace(),
                Topic(
                  '2012: Foco na Infra',
                  subtopics: [
                    Subtopic(text: 'Especialista em Segurança de Endpoints e Acesso a Rede'),
                    Subtopic(text: 'Gerente de T.I'),
                  ],
                ),
                TopicSpace(),
                Topic(
                  '2014: USA, USA, USA',
                  subtopics: [
                    Subtopic(text: 'Ciências sem Fronteiras (CAPES)'),
                    Subtopic(text: 'Ciências da Computação - Neurociência'),
                  ],
                ),
                TopicSpace(),
                Topic(
                  '2018: Engenheiro da Computação (UNIFACS)',
                  subtopics: [
                    Subtopic(
                      child: Row(
                        children: [
                          Subtopic(
                            text: 'Desenvolvedor Android - Kotlin',
                            startPadding: 0,
                          ),
                          SizedBox(width: 10.0),
                          Icon(FontAwesomeIcons.solidHeart, color: Colors.red),
                        ],
                      ),
                    ),
                    Subtopic(
                      child: Row(
                        children: [
                          Subtopic(
                            text: 'Engenheiro de Software na ArcTouch - Flutter',
                            startPadding: 0,
                          ),
                          SizedBox(width: 10.0),
                          Icon(FontAwesomeIcons.solidHeart, color: Colors.blue)
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
