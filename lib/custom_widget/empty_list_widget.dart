
import 'package:flutter/material.dart';

//ignore: must_be_immutable
class EmptyListWidget extends StatelessWidget {

  final String _text;
  const EmptyListWidget(this._text);

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return SizedBox(width: 0.0, height: 0.0,
        child: Text(_text, style: themeData.textTheme.caption.copyWith(fontSize: 24.0))
    );
  }

}