
import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_widget/base_widget.dart';

//ignore: must_be_immutable
class EmptyListWidget extends BaseWidget {

  final String _text;
  EmptyListWidget(this._text);

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Column(children: [
        const SizedBox(height: 10.0,),
        Text(_text,
            style: themeData.textTheme.caption.copyWith(fontSize: 24.0)
        ),
      ],
    );
  }

}