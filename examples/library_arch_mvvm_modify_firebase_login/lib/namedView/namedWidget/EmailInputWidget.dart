import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/EmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/EmailInputWidgetListViewModel.dart';

base class EmailInputWidget extends StatelessWidget {
  @protected
  final EmailInputWidgetListViewModel lo;

  const EmailInputWidget(this.lo);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<EmailInput?>(
        stream: lo.getStreamEmailInput,
        builder: (BuildContext buildContext,
            AsyncSnapshot<EmailInput?> asyncSnapshot) {
          EmailInput? emailInput = asyncSnapshot.data;
          return buildSuccess(emailInput);
        });
  }

  @protected
  Widget buildSuccess(EmailInput? emailInput) {
    return TextField(
        onChanged: (String str) => lo
            .setOneParametersNamedForEmailInputWidgetByEmailInputAndInGeneralZeroTask(
                str),
        keyboardType: TextInputType.emailAddress,
        decoration: buildInputDecorationForSuccess(emailInput));
  }

  @protected
  InputDecoration buildInputDecorationForSuccess(EmailInput? emailInput) {
    return InputDecoration(
      labelText: 'email',
      helperText: '',
      errorText: emailInput?.isOneParametersNamedForEmailInputWidget() ?? false
          ? 'invalid email'
          : null,
    );
  }
}
