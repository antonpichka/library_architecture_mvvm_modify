import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/GoogleButtonWidgetListViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Utility.dart';

class GoogleButtonWidget  
    extends StatelessWidget
{
  @protected
  final GoogleButtonWidgetListViewModel lo;

  const GoogleButtonWidget(this.lo);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ElevatedButton.icon(
      key: const Key('loginForm_googleLogin_raisedButton'),
      label: buildLabel(),
      style: buildButtonStyle(theme),
      icon: buildIcon(),
      onPressed: () => lo
          .updateUserToFirebaseAuthAndGoogleSignInServiceNPAndInGeneralOneTask((String message) => defaultScaffoldMessenger(context, message))
    );
  }

  @protected
  Widget buildLabel() {
    return const Text(
      'SIGN IN WITH GOOGLE',
      style: TextStyle(color: Colors.white),
    );
  }

  @protected
  Widget buildIcon() {
    return const Icon(FontAwesomeIcons.google, color: Colors.white);
  }

  @protected
  ButtonStyle buildButtonStyle(ThemeData theme) {
    return ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      backgroundColor: theme.colorScheme.secondary,
    );
  }
}