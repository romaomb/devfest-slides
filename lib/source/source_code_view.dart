import 'package:flutter/material.dart';

import 'syntax_highlighter.dart';

class SourceCodeView extends StatefulWidget {
  final String filePath;
  final String codeLinkPrefix;

  const SourceCodeView({Key key, @required this.filePath, this.codeLinkPrefix}) : super(key: key);

  String get codeLink => this.codeLinkPrefix == null ? null : '${this.codeLinkPrefix}/${this.filePath}';

  @override
  _SourceCodeViewState createState() {
    return _SourceCodeViewState();
  }
}

class _SourceCodeViewState extends State<SourceCodeView> {
  double _textScaleFactor = 1.5;

  Widget _getCodeView(String codeContent, BuildContext context) {
    final SyntaxHighlighterStyle style = SyntaxHighlighterStyle.darkThemeStyle();
    return Container(
      constraints: BoxConstraints.expand(),
      child: Scrollbar(
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: RichText(
              textScaleFactor: this._textScaleFactor,
              text: TextSpan(
                style: TextStyle(fontSize: 12.0),
                children: <TextSpan>[DartSyntaxHighlighter(style).format(codeContent)],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString(widget.filePath) ?? 'Error loading source code from $this.filePath',
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        if (snapshot.hasData) {
          return Scaffold(
            backgroundColor: Color(0xFF2B2B2B),
            body: Padding(
              padding: EdgeInsets.all(15.0),
              child: _getCodeView(snapshot.data, context),
            ),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
