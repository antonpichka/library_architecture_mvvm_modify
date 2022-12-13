import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInputExt.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/ConfirmedPasswordInputWidgetListViewModel.dart';

class ConfirmedPasswordInputWidget
    extends StatelessWidget
{
  final ConfirmedPasswordInputWidgetListViewModel _lo;

  ConfirmedPasswordInputWidget(this._lo);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PasswordInputExt>(
        initialData: PasswordInputExt.getPasswordInputExtForSuccess,
        stream: _lo.getStreamPasswordInputExtUsingUpdateTIP,
        builder: (BuildContext buildContext, AsyncSnapshot<PasswordInputExt> asyncSnapshot)
        {
          PasswordInputExt? passwordInputExt = asyncSnapshot.data;
          return TextField(
            onChanged: (String str) => _lo
                .setOneParametersNamedForConfirmedPasswordInputWidgetByPasswordInputExtUsingGetNPAndInGeneralZeroTask(str),
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'confirm password',
              helperText: '',
              errorText: passwordInputExt!.isOneParametersNamedForConfirmedPasswordInputWidget()
                  ? 'passwords do not match'
                  : null,
            ),
          );
        });
  }

}