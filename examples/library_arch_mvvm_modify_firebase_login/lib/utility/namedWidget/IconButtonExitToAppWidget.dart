import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/modelQNamedServiceListViewModelForNamedWidget/UserQFirebaseAuthAndGoogleSignInServiceListViewModelForIconButtonExitToAppWidget.dart';

class IconButtonExitToAppWidget
    extends StatelessWidget
{
  final UserQFirebaseAuthAndGoogleSignInServiceListViewModelForIconButtonExitToAppWidget _lo;

  IconButtonExitToAppWidget(this._lo);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      key: Key('homePage_logout_iconButton'),
      icon: Icon(Icons.exit_to_app),
      onPressed: () => _lo
          .deleteUserToFirebaseAuthAndGoogleSignInServiceNPAndInGeneralOneTask(),
    );
  }

}