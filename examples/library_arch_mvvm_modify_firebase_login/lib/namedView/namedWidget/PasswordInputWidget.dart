import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/PasswordInputWidgetListViewModel.dart';

class PasswordInputWidget
    extends StatelessWidget
{
  @protected
  final PasswordInputWidgetListViewModel lo;

  const PasswordInputWidget(this.lo);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PasswordInput?>(
        stream: lo.getStreamPasswordInput,
        builder: (BuildContext buildContext, AsyncSnapshot<PasswordInput?> asyncSnapshot)
        {
          PasswordInput? passwordInput = asyncSnapshot.data;
          return TextField(
            onChanged: (String str) => lo
                .setOneParametersNamedForPasswordInputWidgetByPasswordInputAndInGeneralZeroTask(str),
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'password',
              helperText: '',
              errorText: passwordInput?.isOneParametersNamedForPasswordInputWidget() ?? false
                  ? 'invalid password'
                  : null,
            ),
          );
        });
  }

}