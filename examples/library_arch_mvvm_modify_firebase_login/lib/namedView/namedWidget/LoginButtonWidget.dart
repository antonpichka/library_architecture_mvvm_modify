import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/LoginButtonWidgetListViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Utility.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';

base class LoginButtonWidget extends StatelessWidget {
  @protected
  final LoginButtonWidgetListViewModel lo;

  const LoginButtonWidget(this.lo);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Bool?>(
        stream: lo.getStreamBool,
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
                    backgroundColor: const Color(0xFFFFD600),
                  ),
                  onPressed: bool?.isField ?? false
                      ? null
                      : () => lo
                          .updateUserToFirebaseAuthServiceParameterLoginUsingFBDSAndInGeneralOneTask(
                              (String message) =>
                                  defaultScaffoldMessenger(context, message)),
                  child: const Text('LOGIN'),
                );
        });
  }
}
