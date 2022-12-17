import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInputFirstBranchOne.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/ConfirmedPasswordInputWidgetListViewModel.dart';

class ConfirmedPasswordInputWidget
    extends StatelessWidget
{
  final ConfirmedPasswordInputWidgetListViewModel _lo;

  const ConfirmedPasswordInputWidget(this._lo);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PasswordInputFirstBranchOne>(
        initialData: PasswordInputFirstBranchOne.getPasswordInputFirstBranchOneForSuccess,
        stream: _lo.getStreamPasswordInputExtUsingUpdateTIP,
        builder: (BuildContext buildContext, AsyncSnapshot<PasswordInputFirstBranchOne> asyncSnapshot)
        {
          PasswordInputFirstBranchOne? passwordInputExt = asyncSnapshot.data;
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