import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/SignUpButtonWidgetListViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Utility.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';

base class SignUpButtonWidget extends StatelessWidget {
  @protected
  final SignUpButtonWidgetListViewModel lo;

  const SignUpButtonWidget(this.lo);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Bool?>(
        stream: lo.getStreamBoolForLoading,
        builder:
            (BuildContext buildContext, AsyncSnapshot<Bool?> asyncSnapshot) {
          Bool? bool = asyncSnapshot.data;
          return bool?.isField ?? false
              ? const CircularProgressIndicator()
              : ElevatedButton(
                  key: const Key('loginForm_continue_raisedButton'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    backgroundColor: Colors.orangeAccent,
                  ),
                  onPressed: bool?.isField ?? false
                      ? null
                      : () => lo
                          .insertUserToFirebaseAuthServiceParameterRegistrationAndInGeneralOneTask(
                              (String message) =>
                                  defaultScaffoldMessenger(context, message),
                              () => Navigator.of(context).pop()),
                  child: const Text('SIGN UP'),
                );
        });
  }
}
