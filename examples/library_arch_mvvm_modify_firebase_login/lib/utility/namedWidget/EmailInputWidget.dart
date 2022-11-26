import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/loginInput/LoginInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/modelQNamedServiceListViewModelForNamedWidget/LoginInputQNoServiceListViewModelForEmailInputWidget.dart';

class EmailInputWidget
    extends StatelessWidget
{
  final LoginInputQNoServiceListViewModelForEmailInputWidget _lo;

  EmailInputWidget(this._lo);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<LoginInput>(
        initialData: LoginInput.getLoginInputForSuccess,
        stream: _lo.getStreamLoginInputUsingUpdateTIP,
        builder: (BuildContext buildContext, AsyncSnapshot<LoginInput> asyncSnapshot)
        {
          LoginInput loginInput = asyncSnapshot.data;
          return TextField(
            onChanged: (String str) => _lo
                .setDirtyConstructorFromStrParameterEmailByLoginInputUsingUpdateTIPAndInGeneralZeroTask(str),
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'email',
              helperText: '',
              errorText: loginInput.isInvalidParameterEmail() ? 'invalid email' : null,
            ),
          );
        });
  }

}