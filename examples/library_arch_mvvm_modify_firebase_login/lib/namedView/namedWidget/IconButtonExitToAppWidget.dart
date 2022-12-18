import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/IconButtonExitToAppWidgetListViewModel.dart';

class IconButtonExitToAppWidget
    extends StatelessWidget
{
  @protected
  final IconButtonExitToAppWidgetListViewModel lo;

  const IconButtonExitToAppWidget(this.lo);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      key: const Key('homePage_logout_iconButton'),
      icon: const Icon(Icons.exit_to_app),
      onPressed: () => lo
          .deleteUserToFirebaseAuthAndGoogleSignInServiceNPAndInGeneralOneTask(),
    );
  }

}