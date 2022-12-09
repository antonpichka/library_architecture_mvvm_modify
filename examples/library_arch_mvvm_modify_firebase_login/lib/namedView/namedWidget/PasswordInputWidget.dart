import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/PasswordInputWidgetListViewModel.dart';

class PasswordInputWidget
    extends StatelessWidget
{
  final PasswordInputWidgetListViewModel _lo;

  PasswordInputWidget(this._lo);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PasswordInput>(
        initialData: PasswordInput.getPasswordInputForSuccess,
        stream: _lo.getStreamPasswordInputUsingUpdateTIP,
        builder: (BuildContext buildContext, AsyncSnapshot<PasswordInput> asyncSnapshot)
        {
          PasswordInput? passwordInput = asyncSnapshot.data;
          return TextField(
            onChanged: (String str) => _lo
                .setDirtyConstructorFromStrParameterPasswordByPasswordInputUsingUpdateTIPAndInGeneralZeroTask(str),
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'password',
              helperText: '',
              errorText: passwordInput!.isInvalidParameterPassword() ? 'invalid password' : null,
            ),
          );
        });
  }

}