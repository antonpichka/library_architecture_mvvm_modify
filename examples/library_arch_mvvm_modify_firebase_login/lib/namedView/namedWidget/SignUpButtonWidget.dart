import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/SignUpButtonWidgetListViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Utility.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';

class SignUpButtonWidget
    extends StatelessWidget
{
  final SignUpButtonWidgetListViewModel _lo;

  SignUpButtonWidget(this._lo);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Bool>(
        initialData: Bool.success(false),
        stream: _lo.getStreamBoolUsingGetNPForLoading,
        builder: (BuildContext buildContext, AsyncSnapshot<Bool> asyncSnapshot)
        {
          Bool? bool = asyncSnapshot.data;
          return bool!.getParameterIsField
              ? CircularProgressIndicator()
              : ElevatedButton(
                  key: Key('loginForm_continue_raisedButton'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    backgroundColor: Colors.orangeAccent,
                  ),
                  onPressed: bool.getParameterIsField
                      ? null
                      : () => _lo.insertUserToFirebaseAuthServiceParameterRegistrationAndInGeneralOneTask(
                          (String message) => defaultScaffoldMessenger(context, message),
                          () => Navigator.of(context).pop()),
                  child: Text('SIGN UP'),
                );
        });
  }
}