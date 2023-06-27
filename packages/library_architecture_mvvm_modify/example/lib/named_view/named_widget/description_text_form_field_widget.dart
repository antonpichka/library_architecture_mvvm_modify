import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:library_architecture_mvvm_modify/base_model/strings.dart';
import 'package:library_architecture_mvvm_modify_todo/l10n/l10n.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view_list_view_model/named_widget_list_view_model/description_text_form_field_widget_list_view_model.dart';

base class DescriptionTextFormFieldWidget extends StatelessWidget {
  @protected
  final DescriptionTextFormFieldWidgetListViewModel lo;

  const DescriptionTextFormFieldWidget(this.lo);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Strings?>(
        stream: lo.getStreamStrings,
        builder: (BuildContext context, AsyncSnapshot<Strings?> asyncSnapshot) {
          if (asyncSnapshot.data == null) {
            return Container();
          }
          final strings = asyncSnapshot.data;
          return TextFormField(
              initialValue: strings?.field,
              decoration: buildDecoration(context, strings),
              maxLength: maxLength(),
              maxLines: maxLines(),
              inputFormatters: inputFormatters(),
              onChanged: (value) => onChanged(context, value));
        });
  }

  @protected
  InputDecoration buildDecoration(BuildContext context, Strings? strings) {
    final l10n = context.l10n;
    return InputDecoration(labelText: l10n.editTodoDescriptionLabel);
  }

  @protected
  int maxLength() {
    return 300;
  }

  @protected
  int maxLines() {
    return 7;
  }

  @protected
  List<TextInputFormatter> inputFormatters() {
    return [
      LengthLimitingTextInputFormatter(300),
    ];
  }

  @protected
  void onChanged(BuildContext context, String value) {
    lo.setFieldByStringsAndInGeneralZeroTask(value);
  }
}
