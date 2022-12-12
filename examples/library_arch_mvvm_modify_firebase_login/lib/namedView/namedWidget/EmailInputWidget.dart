import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/EmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/EmailInputWidgetListViewModel.dart';

class EmailInputWidget
    extends StatelessWidget
{
  final EmailInputWidgetListViewModel _lo;

  EmailInputWidget(this._lo);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<EmailInput>(
        initialData: EmailInput.getEmailInputForSuccess,
        stream: _lo.getStreamEmailInputUsingUpdateTIP,
        builder: (BuildContext buildContext, AsyncSnapshot<EmailInput> asyncSnapshot)
        {
          EmailInput? emailInput = asyncSnapshot.data;
          return TextField(
            onChanged: (String str) => _lo
                .setOneParametersNamedForEmailInputWidgetByEmailInputUsingUpdateTIPAndInGeneralZeroTask(str),
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'email',
              helperText: '',
              errorText: emailInput!.isOneParametersNamedForEmailInputWidget() ? 'invalid email' : null,
            ),
          );
        });
  }

}