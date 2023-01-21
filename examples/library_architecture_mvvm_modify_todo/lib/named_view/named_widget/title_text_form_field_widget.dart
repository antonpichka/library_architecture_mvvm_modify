import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:library_architecture_mvvm_modify/base_model/strings.dart';
import 'package:library_architecture_mvvm_modify_todo/l10n/l10n.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view_list_view_model/named_widget_list_view_model/title_text_form_field_widget_list_view_model.dart';

class TitleTextFormFieldWidget
    extends StatelessWidget
{
  @protected
  final TitleTextFormFieldWidgetListViewModel lo;

  const TitleTextFormFieldWidget(this.lo);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Strings?>(
        stream: lo.getStreamStrings,
        builder: (BuildContext context,AsyncSnapshot<Strings?> asyncSnapshot)
        {
          if(asyncSnapshot.data == null) {
            return Container();
          }
          final strings = asyncSnapshot.data;
          return TextFormField(
            initialValue: strings?.field,
            decoration: buildDecoration(context, strings),
            maxLength: maxLength(),
            inputFormatters: inputFormatters(),
            onChanged: (value) => onChanged(context,value));
        });
  }

  @protected
  InputDecoration buildDecoration(BuildContext context, Strings? strings) {
    final l10n = context.l10n;
    return InputDecoration(labelText: l10n.editTodoTitleLabel);
  }

  @protected
  int maxLength() {
    return 50;
  }

  @protected
  List<TextInputFormatter> inputFormatters() {
    return [
      LengthLimitingTextInputFormatter(50),
      FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9\s]')),
    ];
  }

  @protected
  void onChanged(BuildContext context,String value) {
    lo.setFieldByStringsAndInGeneralZeroTask(value);
  }
}