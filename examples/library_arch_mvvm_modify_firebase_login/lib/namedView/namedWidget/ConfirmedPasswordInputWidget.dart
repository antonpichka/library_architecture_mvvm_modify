import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInputFirstBranchOne.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/ConfirmedPasswordInputWidgetListViewModel.dart';

class ConfirmedPasswordInputWidget
    extends StatelessWidget
{
  @protected
  final ConfirmedPasswordInputWidgetListViewModel lo;

  const ConfirmedPasswordInputWidget(this.lo);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PasswordInputFirstBranchOne>(
        stream: lo.getStreamPasswordInputUsingGetNP,
        builder: (BuildContext buildContext, AsyncSnapshot<PasswordInputFirstBranchOne> asyncSnapshot)
        {
          PasswordInputFirstBranchOne? passwordInput = asyncSnapshot.data;
          return buildSuccess(passwordInput);
        });
  }

  @protected
  Widget buildSuccess(PasswordInputFirstBranchOne? passwordInput) {
    return TextField(
      onChanged: (String str) => lo.setOneParametersNamedForConfirmedPasswordInputWidgetByPasswordInputUsingGetNPAndInGeneralZeroTask(str),
      obscureText: true,
      decoration: buildInputDecorationForSuccess(passwordInput)
    );
  }

  @protected
  InputDecoration buildInputDecorationForSuccess(PasswordInputFirstBranchOne? passwordInput) {
    return InputDecoration(
      labelText: 'confirm password',
      helperText: '',
      errorText: passwordInput?.isOneParametersNamedForConfirmedPasswordInputWidget() ?? false
          ? 'passwords do not match'
          : null,
    );
  }


}