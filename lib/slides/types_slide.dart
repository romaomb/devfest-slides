import 'package:devfest_slides/resources/colors.dart';
import 'package:devfest_slides/resources/strings.dart';
import 'package:devfest_slides/resources/styles.dart';
import 'package:devfest_slides/widgets/triangle_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slides/flutter_slides.dart';

class TypesSlide extends SlideBase {
  final halfBakedDecoration = BoxDecoration(color: CustomColors.halfBaked);
  final halfBakedOpacityDecoration = BoxDecoration(color: CustomColors.halfBaked.withOpacity(0.5));

  @override
  Widget background() => TriangleBackground();

  @override
  Widget title(BuildContext context) => Text(Strings.typesTitle);

  @override
  Widget body(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            columnWidths: {
              0: FixedColumnWidth(200),
              1: FixedColumnWidth(200),
              2: FixedColumnWidth(500),
            },
            children: [
              TableRow(
                decoration: BoxDecoration(color: CustomColors.regalBlue),
                children: [
                  _buildTableCell('Dart', TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white)),
                  _buildTableCell('Android', TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white)),
                  _buildTableCell('iOS', TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white)),
                ],
              ),
              TableRow(
                decoration: halfBakedDecoration,
                children: [
                  _buildTableCell('null', Styles.textCell),
                  _buildTableCell('null', Styles.textCell),
                  _buildTableCell('nil (NSNull when nested)', Styles.textCell),
                ],
              ),
              TableRow(
                decoration: halfBakedOpacityDecoration,
                children: [
                  _buildTableCell('bool', Styles.textCell),
                  _buildTableCell('java.lang.Boolean', Styles.textCell),
                  _buildTableCell('NSNumber numberWithBool', Styles.textCell),
                ],
              ),
              TableRow(
                decoration: halfBakedDecoration,
                children: [
                  _buildTableCell('int', Styles.textCell),
                  _buildTableCell('java.lang.Integer', Styles.textCell),
                  _buildTableCell('NSNumber numberWithInt', Styles.textCell),
                ],
              ),
              TableRow(
                decoration: halfBakedOpacityDecoration,
                children: [
                  _buildTableCell('int/long', Styles.textCell),
                  _buildTableCell('java.lang.Long', Styles.textCell),
                  _buildTableCell('NSNumber numberWithLong', Styles.textCell),
                ],
              ),
              TableRow(
                decoration: halfBakedDecoration,
                children: [
                  _buildTableCell('double', Styles.textCell),
                  _buildTableCell('java.lang.Double', Styles.textCell),
                  _buildTableCell('NSNumber numberWithDouble', Styles.textCell),
                ],
              ),
              TableRow(
                decoration: halfBakedOpacityDecoration,
                children: [
                  _buildTableCell('String', Styles.textCell),
                  _buildTableCell('java.lang.String', Styles.textCell),
                  _buildTableCell('NSString', Styles.textCell),
                ],
              ),
              TableRow(
                decoration: halfBakedDecoration,
                children: [
                  _buildTableCell('Uint8List', Styles.textCell),
                  _buildTableCell('byte[ ]', Styles.textCell),
                  _buildTableCell('FlutterStandardTypedData typedDataWithBytes', Styles.textCell),
                ],
              ),
              TableRow(
                decoration: halfBakedOpacityDecoration,
                children: [
                  _buildTableCell('Int32List', Styles.textCell),
                  _buildTableCell('int[ ]', Styles.textCell),
                  _buildTableCell('FlutterStandardTypedData typedDataWithInt32', Styles.textCell),
                ],
              ),
              TableRow(
                decoration: halfBakedDecoration,
                children: [
                  _buildTableCell('Int64List', Styles.textCell),
                  _buildTableCell('long[ ]', Styles.textCell),
                  _buildTableCell('FlutterStandardTypedData typedDataWithInt64', Styles.textCell),
                ],
              ),
              TableRow(
                decoration: halfBakedOpacityDecoration,
                children: [
                  _buildTableCell('Float64List', Styles.textCell),
                  _buildTableCell('double[ ]', Styles.textCell),
                  _buildTableCell('FlutterStandardTypedData typedDataWithFloat64', Styles.textCell),
                ],
              ),
              TableRow(
                decoration: halfBakedDecoration,
                children: [
                  _buildTableCell('List', Styles.textCell),
                  _buildTableCell('java.util.ArrayList', Styles.textCell),
                  _buildTableCell('NSArray', Styles.textCell),
                ],
              ),
              TableRow(
                decoration: halfBakedOpacityDecoration,
                children: [
                  _buildTableCell('Map', Styles.textCell),
                  _buildTableCell('java.util.HashMap', Styles.textCell),
                  _buildTableCell('NSDictionary', Styles.textCell),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 20.0),
          alignment: Alignment.center,
          child: Text(
            'StandardMessageCodec - Tabela de conversão automática',
            style: Styles.textCaption,
          ),
        )
      ],
    );
  }

  Widget _buildTableCell(String text, TextStyle style) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
